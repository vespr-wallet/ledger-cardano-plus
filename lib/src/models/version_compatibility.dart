import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ledger_cardano_plus/src/cardano_version.dart';
import 'package:ledger_cardano_plus/src/models/parsed_address_params.dart';
import 'package:ledger_cardano_plus/src/models/parsed_c_vote_registration_params.dart';
import 'package:ledger_cardano_plus/src/models/parsed_certificate.dart';
import 'package:ledger_cardano_plus/src/models/parsed_output_destination.dart';
import 'package:ledger_cardano_plus/src/models/parsed_signing_request.dart';
import 'package:ledger_cardano_plus/src/models/parsed_tx_auxiliary_data.dart';
import 'package:ledger_cardano_plus/src/models/transaction_signing_mode.dart';
import 'package:ledger_cardano_plus/src/utils/constants.dart';
import 'package:ledger_cardano_plus/src/utils/validation_exception.dart';

part 'version_compatibility.freezed.dart';

@freezed
class VersionCompatibility with _$VersionCompatibility {
  const VersionCompatibility._();

  const factory VersionCompatibility({
    required bool isCompatible,
    required String? recommendedVersion,
    required bool supportsNativeScriptHashDerivation,
    required bool supportsOperationalCertificateSigning,
    required bool supportsByronAddressDerivation,
    required bool supportsMary,
    required bool supportsCatalystRegistration,
    required bool supportsCIP36,
    required bool supportsZeroTtl,
    required bool supportsPoolRegistrationAsOwner,
    required bool supportsPoolRegistrationAsOperator,
    required bool supportsPoolRetirement,
    required bool supportsMultisigTransaction,
    required bool supportsMint,
    required bool supportsAlonzo,
    required bool supportsReqSignersInOrdinaryTx,
    required bool supportsBabbage,
    required bool supportsCIP36Vote,
    required bool supportsConway,
  }) = _VersionCompatibility;

  factory VersionCompatibility.checkVersionCompatibility(
      CardanoVersion version) {
    final isAppXS = version.flags.isAppXS;
    final int major = version.versionMajor;
    final int minor = version.versionMinor;

    bool isVersionInRange(int minMajor, int minMinor, [int maxMajor = 7]) {
      return (major > minMajor || (major == minMajor && minor >= minMinor)) &&
          major <= maxMajor;
    }

    return VersionCompatibility(
      isCompatible: isVersionInRange(2, 2),
      recommendedVersion: isVersionInRange(2, 2) ? null : ">=7.0",
      supportsNativeScriptHashDerivation: isVersionInRange(3, 0) && !isAppXS,
      supportsOperationalCertificateSigning: isVersionInRange(2, 4),
      supportsByronAddressDerivation: isVersionInRange(2, 2) && !isAppXS,
      supportsMary: isVersionInRange(2, 2),
      supportsCatalystRegistration: isVersionInRange(2, 3),
      supportsCIP36: isVersionInRange(6, 0),
      supportsZeroTtl: isVersionInRange(2, 3),
      supportsPoolRegistrationAsOwner: isVersionInRange(2, 2) && !isAppXS,
      supportsPoolRegistrationAsOperator: isVersionInRange(2, 4) && !isAppXS,
      supportsPoolRetirement: isVersionInRange(2, 4) && !isAppXS,
      supportsMultisigTransaction: isVersionInRange(3, 0),
      supportsMint: isVersionInRange(3, 0),
      supportsAlonzo: isVersionInRange(4, 0),
      supportsReqSignersInOrdinaryTx: isVersionInRange(4, 1),
      supportsBabbage: isVersionInRange(5, 0),
      supportsCIP36Vote: isVersionInRange(6, 0),
      supportsConway: isVersionInRange(7, 0),
    );
  }

  static void ensureRequestSupportedByAppVersion(
      CardanoVersion version, ParsedSigningRequest request) {
    final compatibility =
        VersionCompatibility.checkVersionCompatibility(version);

    final void Function() invoker = switch (request.signingMode) {
      TransactionSigningModes.poolRegistrationAsOwner
          when !compatibility.supportsPoolRegistrationAsOwner =>
        () {
          throw ValidationException(
            'Pool registration as owner not supported by Ledger app version ${version.versionName}.',
          );
        },
      TransactionSigningModes.poolRegistrationAsOperator
          when !compatibility.supportsPoolRegistrationAsOperator =>
        () {
          throw ValidationException(
            'Pool registration as operator not supported by Ledger app version ${version.versionName}.',
          );
        },
      TransactionSigningModes.multisigTransaction
          when !compatibility.supportsMultisigTransaction =>
        () {
          throw ValidationException(
            'Multisig transactions not supported by Ledger app version ${version.versionName}.',
          );
        },
      TransactionSigningModes.plutusTransaction
          when !compatibility.supportsAlonzo =>
        () {
          throw ValidationException(
            'Plutus transactions not supported by Ledger app version ${version.versionName}.',
          );
        },
      _ => () {},
    };
    invoker();
    final hasByronAddressParam = request.tx.outputs.any((o) {
      final bool Function() invoker = switch (o.destination) {
        DeviceOwned(addressParams: ByronAddressParams()) => () => true,
        _ => switch (request.tx.collateralOutput?.destination) {
            DeviceOwned(addressParams: ByronAddressParams()) => () => true,
            _ => () => false,
          },
      };
      return invoker();
    });
    if (hasByronAddressParam && !compatibility.supportsByronAddressDerivation) {
      throw ValidationException(
        'Byron address parameters not supported by Ledger app version ${version.versionName}.',
      );
    }

    if (request.tx.ttl == BigInt.zero && !compatibility.supportsZeroTtl) {
      throw ValidationException(
        'Zero TTL not supported by Ledger app version ${version.versionName}.',
      );
    }

    final hasPoolRetirement = request.tx.certificates?.any((c) {
          return switch (c) {
            StakePoolRetirement() => true,
            _ => false,
          };
        }) ??
        false;
    if (hasPoolRetirement && !compatibility.supportsPoolRetirement) {
      throw ValidationException(
        'Pool retirement certificate not supported by Ledger app version ${version.versionName}.',
      );
    }

    final hasConwayCertificates = request.tx.certificates?.any((c) {
          if (c.isConway) {
            return true;
          }
          return false;
        }) ??
        false;
    if (hasConwayCertificates && !compatibility.supportsConway) {
      throw ValidationException(
        'Conway era certificates not supported by Ledger app version ${version.versionName}.',
      );
    }

    if (request.tx.mint != null && !compatibility.supportsMint) {
      throw ValidationException(
        'Mint not supported by Ledger app version ${version.versionName}.',
      );
    }

    final hasMapFormatInOutputs =
        request.tx.outputs.any((o) => o.format == TxOutputFormat.mapBabbage);
    if (hasMapFormatInOutputs && !compatibility.supportsBabbage) {
      throw ValidationException(
        'Outputs with map format not supported by Ledger app version ${version.versionName}.',
      );
    }

    if (request.tx.collateralOutput != null && !compatibility.supportsBabbage) {
      throw ValidationException(
        'Collateral output not supported by Ledger app version ${version.versionName}.',
      );
    }

    if (request.tx.totalCollateral != null && !compatibility.supportsBabbage) {
      throw ValidationException(
        'Total collateral not supported by Ledger app version ${version.versionName}.',
      );
    }

    if (request.tx.referenceInputs?.isNotEmpty == true &&
        !compatibility.supportsBabbage) {
      throw ValidationException(
        'Reference inputs not supported by Ledger app version ${version.versionName}.',
      );
    }

    if (request.tx.requiredSigners?.isNotEmpty == true &&
        !compatibility.supportsAlonzo) {
      throw ValidationException(
        'Required signers not supported by Ledger app version ${version.versionName}.',
      );
    }

    if (!compatibility.supportsAlonzo) {
      throw ValidationException(
        'Network id in tx body not supported by Ledger app version ${version.versionName}.',
      );
    }

    if (request.tx.scriptDataHashHex != null && !compatibility.supportsAlonzo) {
      throw ValidationException(
        'Script data hash not supported by Ledger app version ${version.versionName}.',
      );
    }

    if (request.tx.collateralInputs?.isNotEmpty == true &&
        !compatibility.supportsAlonzo) {
      throw ValidationException(
        'Collateral inputs not supported by Ledger app version ${version.versionName}.',
      );
    }

    final auxiliaryData = request.tx.auxiliaryData;
    final hasCIP15Registration = switch (auxiliaryData) {
      CIP36Registration(
        params: ParsedCVoteRegistrationParams(
          format: CIP36VoteRegistrationFormat.cip15
        )
      ) =>
        true,
      _ => false,
    };
    if (hasCIP15Registration && !compatibility.supportsCatalystRegistration) {
      throw ValidationException(
        'Catalyst registration not supported by Ledger app version ${version.versionName}.',
      );
    }

    final hasCIP36Registration = switch (auxiliaryData) {
      CIP36Registration(
        params: ParsedCVoteRegistrationParams(
          format: CIP36VoteRegistrationFormat.cip36
        )
      ) =>
        true,
      _ => false,
    };
    if (hasCIP36Registration && !compatibility.supportsCIP36) {
      throw ValidationException(
        'CIP36 registration not supported by Ledger app version ${version.versionName}.',
      );
    }

    final hasKeyPath = switch (auxiliaryData) {
      CIP36Registration(
        params: ParsedCVoteRegistrationParams(votePublicKeyPath: _)
      ) =>
        true,
      _ => false,
    };
    if (hasKeyPath && !compatibility.supportsCIP36Vote) {
      throw ValidationException(
        'Vote key derivation path in CIP15/CIP36 registration not supported by Ledger app version ${version.versionName}.',
      );
    }

    final thirdPartyPayment = switch (auxiliaryData) {
      CIP36Registration(
        params: ParsedCVoteRegistrationParams(
          paymentDestination: ThirdParty(addressHex: _)
        )
      ) =>
        true,
      _ => false,
    };
    if (thirdPartyPayment && !compatibility.supportsCIP36) {
      throw ValidationException(
        'CIP36 payment addresses not owned by the device not supported by Ledger app version ${version.versionName}.',
      );
    }
  }
}
