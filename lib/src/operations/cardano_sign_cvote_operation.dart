import 'dart:typed_data';

import 'package:ledger_cardano_plus/ledger_cardano_plus.dart';
import 'package:ledger_cardano_plus/src/utils/serialization_utils.dart';
import 'package:ledger_flutter_plus/ledger_flutter_plus_dart.dart';

class CardanoSignCVoteOperation
    extends LedgerComplexOperation<SignedCIP36VoteData> {
  final ParsedCVote cVote;
  final CardanoVersion version;

  const CardanoSignCVoteOperation({
    required this.cVote,
    required this.version,
  });

  LedgerSimpleOperation _createSendOperation({
    required int p1,
    required Uint8List data,
  }) {
    return LedgerSimpleOperation(
      cla: claCardano,
      ins: InstructionType.signCip36Vote.insValue,
      p1: p1,
      p2: p2Unused,
      data: data,
      prependDataLength: true,
      debugName: 'Sign CIP36 Vote',
    );
  }

  @override
  Future<SignedCIP36VoteData> invoke(LedgerSendFct send) async {
    if (!VersionCompatibility.checkVersionCompatibility(version)
        .supportsCIP36Vote) {
      throw LedgerCardanoVersionNotSupported(
        message: 'CIP36 voting',
        wantedVersion: '6.0.0',
        era: 'Babbage',
      );
    }

    final votecastBytes = hex.decode(cVote.voteCastDataHex);
    var start = 0;
    var end = votecastBytes.length < maxVotecastChunkSize
        ? votecastBytes.length
        : maxVotecastChunkSize;

    final initDataBuffer = Uint8List.fromList([
      ...SerializationUtils.serializeUint32(votecastBytes.length),
      ...votecastBytes.sublist(start, end),
    ]);
    await send(_createSendOperation(p1: p1StageInit, data: initDataBuffer));
    start = end;

    while (start < votecastBytes.length) {
      end = votecastBytes.length < start + maxVotecastChunkSize
          ? votecastBytes.length
          : start + maxVotecastChunkSize;

      await send(_createSendOperation(
        p1: p1StageChunk,
        data: Uint8List.fromList(votecastBytes.sublist(start, end)),
      ));
      start = end;
    }

    final confirmResponse = await send(_createSendOperation(
      p1: p1StageConfirmVote,
      data: Uint8List(0),
    ));

    final witnessResponse = await send(_createSendOperation(
      p1: p1StageWitness,
      data: SerializationUtils.pathToBuf(cVote.witnessPath.signingPath),
    ));

    return SignedCIP36VoteData(
      dataHashHex: hex.encode(confirmResponse.read(votecastHashLength)),
      witnessPath: cVote.witnessPath,
      witnessSignatureHex:
          hex.encode(witnessResponse.read(ed25519SignatureLength)),
    );
  }
}
