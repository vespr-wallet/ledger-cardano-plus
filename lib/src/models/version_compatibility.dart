import "package:freezed_annotation/freezed_annotation.dart";

import "../cardano_version.dart";
import "../utils/constants.dart";
import "../utils/exceptions.dart";
import "parsed_address_params.dart";
import "parsed_c_vote_registration_params.dart";
import "parsed_certificate.dart";
import "parsed_output_destination.dart";
import "parsed_signing_request.dart";
import "parsed_tx_auxiliary_data.dart";
import "transaction_signing_mode.dart";

part "version_compatibility.freezed.dart";

@freezed
sealed class VersionCompatibility with _$VersionCompatibility {
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
  const VersionCompatibility._();

  factory VersionCompatibility.checkVersionCompatibility(CardanoVersion version) {
    final isAppXS = version.flags.isAppXS;
    final int major = version.versionMajor;
    final int minor = version.versionMinor;

    bool isVersionInRange(int minMajor, int minMinor, [int maxMajor = 7]) {
      return (major > minMajor || (major == minMajor && minor >= minMinor)) && major <= maxMajor;
    }

    return VersionCompatibility(
      recommendedVersion: ">=7.2.1",
      isCompatible: isVersionInRange(2, 2),
      supportsPoolRegistrationAsOwner: isVersionInRange(2, 2) && !isAppXS,
      supportsByronAddressDerivation: isVersionInRange(2, 2) && !isAppXS,
      supportsMary: isVersionInRange(2, 2),
      supportsCatalystRegistration: isVersionInRange(2, 3),
      supportsZeroTtl: isVersionInRange(2, 3),
      supportsPoolRegistrationAsOperator: isVersionInRange(2, 4) && !isAppXS,
      supportsOperationalCertificateSigning: isVersionInRange(2, 4),
      supportsPoolRetirement: isVersionInRange(2, 4) && !isAppXS,
      supportsNativeScriptHashDerivation: isVersionInRange(3, 0) && !isAppXS,
      supportsMultisigTransaction: isVersionInRange(3, 0),
      supportsMint: isVersionInRange(3, 0),
      supportsAlonzo: isVersionInRange(4, 0),
      supportsReqSignersInOrdinaryTx: isVersionInRange(4, 1),
      supportsBabbage: isVersionInRange(5, 0),
      supportsCIP36: isVersionInRange(6, 0),
      supportsCIP36Vote: isVersionInRange(6, 0),
      supportsConway: isVersionInRange(7, 0),
    );
  }

  static void ensureRequestSupportedByAppVersion(CardanoVersion version, ParsedSigningRequest request) {
    final compatibility = VersionCompatibility.checkVersionCompatibility(version);

    final void Function() invoker = switch (request.signingMode) {
      TransactionSigningModes.poolRegistrationAsOwner when !compatibility.supportsPoolRegistrationAsOwner => () {
          throw LedgerCardanoVersionNotSupported(
            message: "Pool registration as owner",
            wantedVersion: ">=2.2.0",
            era: "Mary",
          );
        },
      TransactionSigningModes.poolRegistrationAsOperator when !compatibility.supportsPoolRegistrationAsOperator => () {
          throw LedgerCardanoVersionNotSupported(
            message: "Pool registration as operator",
            wantedVersion: ">=2.4.0",
            era: "Mary",
          );
        },
      TransactionSigningModes.multisigTransaction when !compatibility.supportsMultisigTransaction => () {
          throw LedgerCardanoVersionNotSupported(
            message: "Multisig transaction",
            wantedVersion: ">=3.0.0",
            era: "Mary",
          );
        },
      TransactionSigningModes.plutusTransaction when !compatibility.supportsAlonzo => () {
          throw LedgerCardanoVersionNotSupported(
            message: "Plutus transaction",
            wantedVersion: ">=4.0.0",
            era: "Alonzo",
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
      throw LedgerCardanoVersionNotSupported(
        message: "Byron address derivation",
        wantedVersion: ">=2.2.0",
        era: "Mary",
      );
    }

    if (request.tx.ttl == BigInt.zero && !compatibility.supportsZeroTtl) {
      throw LedgerCardanoVersionNotSupported(
        message: "Zero TTL",
        wantedVersion: ">=2.3.0",
        era: "Mary",
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
      throw LedgerCardanoVersionNotSupported(
        message: "Pool retirement",
        wantedVersion: ">=2.4.0",
        era: "Mary",
      );
    }

    final hasConwayCertificates = request.tx.certificates?.any((c) => c.isConway) ?? false;
    if (hasConwayCertificates && !compatibility.supportsConway) {
      throw LedgerCardanoVersionNotSupported(
        message: "Conway certificates",
        wantedVersion: ">=7.0.0",
        era: "Conway",
      );
    }

    if (request.tx.mint != null && !compatibility.supportsMint) {
      throw LedgerCardanoVersionNotSupported(
        message: "Mint",
        wantedVersion: ">=3.0.0",
        era: "Mary",
      );
    }

    final hasMapFormatInOutputs = request.tx.outputs.any((o) => o.format == TxOutputFormat.mapBabbage);
    if (hasMapFormatInOutputs && !compatibility.supportsBabbage) {
      throw LedgerCardanoVersionNotSupported(
        message: "Map CBOR output(s)",
        wantedVersion: ">=6.0.0",
        era: "Babbage",
      );
    }

    if (request.tx.collateralOutput != null && !compatibility.supportsBabbage) {
      throw LedgerCardanoVersionNotSupported(
        message: "Collateral output",
        wantedVersion: ">=6.0.0",
        era: "Babbage",
      );
    }

    if (request.tx.totalCollateral != null && !compatibility.supportsBabbage) {
      throw LedgerCardanoVersionNotSupported(
        message: "Total collateral",
        wantedVersion: ">=6.0.0",
        era: "Babbage",
      );
    }

    if (request.tx.referenceInputs?.isNotEmpty == true && !compatibility.supportsBabbage) {
      throw LedgerCardanoVersionNotSupported(
        message: "Reference inputs",
        wantedVersion: ">=6.0.0",
        era: "Babbage",
      );
    }

    if (request.tx.requiredSigners?.isNotEmpty == true && !compatibility.supportsAlonzo) {
      throw LedgerCardanoVersionNotSupported(
        message: "Required signers",
        wantedVersion: ">=4.0.0",
        era: "Alonzo",
      );
    }

    if (request.tx.includeNetworkId == true && !compatibility.supportsAlonzo) {
      throw LedgerCardanoVersionNotSupported(
        message: "Network id",
        wantedVersion: ">=4.0.0",
        era: "Alonzo",
      );
    }

    if (request.tx.scriptDataHashHex != null && !compatibility.supportsAlonzo) {
      throw LedgerCardanoVersionNotSupported(
        message: "Script data hash",
        wantedVersion: ">=4.0.0",
        era: "Alonzo",
      );
    }

    if (request.tx.collateralInputs?.isNotEmpty == true && !compatibility.supportsAlonzo) {
      throw LedgerCardanoVersionNotSupported(
        message: "Collateral inputs",
        wantedVersion: ">=4.0.0",
        era: "Alonzo",
      );
    }

    final auxiliaryData = request.tx.auxiliaryData;
    final hasCIP15Registration = switch (auxiliaryData) {
      CIP36Registration(params: ParsedCVoteRegistrationParams(format: CIP36VoteRegistrationFormat.cip15)) => true,
      _ => false,
    };
    if (hasCIP15Registration && !compatibility.supportsCatalystRegistration) {
      throw LedgerCardanoVersionNotSupported(
        message: "Catalyst registration",
        wantedVersion: ">=2.3.0",
        era: "Mary",
      );
    }

    final hasCIP36Registration = switch (auxiliaryData) {
      CIP36Registration(params: ParsedCVoteRegistrationParams(format: CIP36VoteRegistrationFormat.cip36)) => true,
      _ => false,
    };
    if (hasCIP36Registration && !compatibility.supportsCIP36) {
      throw LedgerCardanoVersionNotSupported(
        message: "CIP36 registration",
        wantedVersion: ">=6.0.0",
        era: "Babbage",
      );
    }

    final hasKeyPath = switch (auxiliaryData) {
      CIP36Registration(params: ParsedCVoteRegistrationParams()) => true,
      _ => false,
    };
    if (hasKeyPath && !compatibility.supportsCIP36Vote) {
      throw LedgerCardanoVersionNotSupported(
        message: "Vote key derivation path",
        wantedVersion: ">=6.0.0",
        era: "Babbage",
      );
    }

    final thirdPartyPayment = switch (auxiliaryData) {
      CIP36Registration(params: ParsedCVoteRegistrationParams(paymentDestination: ThirdParty())) => true,
      _ => false,
    };
    if (thirdPartyPayment && !compatibility.supportsCIP36) {
      throw LedgerCardanoVersionNotSupported(
        message: "Third party payment destination",
        wantedVersion: ">=6.0.0",
        era: "Babbage",
      );
    }
  }
}
