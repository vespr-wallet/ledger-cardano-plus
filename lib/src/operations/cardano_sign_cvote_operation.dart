import 'dart:typed_data';

import 'package:ledger_cardano/ledger_cardano.dart';
import 'package:ledger_cardano/src/models/parsed_c_vote.dart';
import 'package:ledger_cardano/src/models/signed_cip36_vote_data.dart';
import 'package:ledger_cardano/src/models/version_compatibility.dart';
import 'package:ledger_cardano/src/operations/complex_ledger_operations.dart';
import 'package:ledger_cardano/src/operations/ledger_operations.dart';
import 'package:ledger_cardano/src/utils/serialization_utils.dart';
import 'package:ledger_cardano/src/utils/validation_exception.dart';

class CardanoSignCVoteOperation extends ComplexLedgerOperation<SignedCIP36VoteData> {


  final ParsedCVote cVote;
  final CardanoVersion version;

  const CardanoSignCVoteOperation({
    required this.cVote,
    required this.version,
  });

  @override
  Future<SignedCIP36VoteData> invoke(LedgerSendFct send) async {
    if (!VersionCompatibility.checkVersionCompatibility(version).supportsCIP36Vote) {
      throw ValidationException(
        'CIP36 voting not supported by Ledger app version ${version.versionName}.',
      );
    }

    final votecastBytes = hex.decode(cVote.voteCastDataHex);
    var start = 0;
    var end = votecastBytes.length < maxVotecastChunkSize ? votecastBytes.length : maxVotecastChunkSize;

    // INIT
    final initDataBuffer = Uint8List.fromList([
      ...SerializationUtils.serializeUint32(votecastBytes.length),
      ...votecastBytes.sublist(start, end),
    ]);
    await send(SendOperation(
      ins: InstructionType.signCip36Vote.insValue,
      p1: p1StageInit,
      p2: p2Unused,
      data: initDataBuffer,
      prependDataLength: true,
      debugName: 'Sign CIP36 Vote Init',
    ));
    start = end;

    // CHUNK
    while (start < votecastBytes.length) {
      end = votecastBytes.length < start + maxVotecastChunkSize ? votecastBytes.length : start + maxVotecastChunkSize;

      await send(SendOperation(
        ins: InstructionType.signCip36Vote.insValue,
        p1: p1StageChunk,
        p2: p2Unused,
        data: Uint8List.fromList(votecastBytes.sublist(start, end)),
        prependDataLength: true,
        debugName: 'Sign CIP36 Vote Chunk',
      ));
      start = end;
    }

    // CONFIRM
    final confirmResponse = await send(SendOperation(
      ins: InstructionType.signCip36Vote.insValue,
      p1: p1StageConfirm,
      p2: p2Unused,
      data: Uint8List(0),
      prependDataLength: true,
      debugName: 'Sign CIP36 Vote Confirm',
    ));

    // WITNESS
    final witnessResponse = await send(SendOperation(
      ins: InstructionType.signCip36Vote.insValue,
      p1: p1StageWitness,
      p2: p2Unused,
      data: SerializationUtils.pathToBuf(cVote.witnessPath.signingPath),
      prependDataLength: true,
      debugName: 'Sign CIP36 Vote Witness',
    ));

    return SignedCIP36VoteData(
      dataHashHex: hex.encode(confirmResponse.read(votecastHashLength)),
      witnessPath: cVote.witnessPath,
      witnessSignatureHex: hex.encode(witnessResponse.read(ed25519SignatureLength)),
    );
  }
}
