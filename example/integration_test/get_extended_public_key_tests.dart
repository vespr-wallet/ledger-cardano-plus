import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:ledger_cardano_plus/ledger_cardano_plus.dart';
import 'package:ledger_flutter_plus/ledger_flutter_plus.dart';

import 'get_extended_public_key_test_cases.dart';
import 'test_utils.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('getExtendedPublicKey', () {
    late CardanoLedgerConnection cardanoApp;

    setUpAll(() async {
      cardanoApp = await establishCardanoConnection();
      print('Connected to device: ${cardanoApp.device.name}');
    });

    group('Should successfully get a single extended public key', () {
      test('get a single extended public key --- byron', () async {
        await testSingleKey(testsByron, cardanoApp);
      });

      test('get a single extended public key --- shelley usual', () async {
        await testSingleKey(testsShelleyUsual, cardanoApp);
      });

      test('get a single extended public key --- shelley unusual', () async {
        await testSingleKey(testsShelleyUnusual, cardanoApp);
      });

      test('get a single extended public key --- cold keys', () async {
        await testSingleKey(testsColdKeys, cardanoApp);
      });

      test('get a single extended public key --- vote keys', () async {
        await testSingleKey(testsCVoteKeys, cardanoApp);
      });
    });

    group('Should successfully get several extended public keys', () {
      test('starting with a usual one', () async {
        await testMultipleKeys([
          ...testsByron,
          ...testsShelleyUsual,
          ...testsColdKeys,
          ...testsCVoteKeys,
        ], cardanoApp);
      });

      test('starting with an unusual one', () async {
        await testMultipleKeys([
          ...testsShelleyUnusual,
          ...testsByron,
          ...testsColdKeys,
          ...testsShelleyUsual,
        ], cardanoApp);
      });
    });

    group('Should reject invalid paths', () {
      test('path shorter than 3 indexes', () async {
        final promise = cardanoApp.getExtendedPublicKey(
          request: ExtendedPublicKeyRequest_Custom(customPath: [harden + 44, harden + 1815]),
        );
        expectVespr(promise, throwsA(isA<LedgerException>()));
      });

      test('path not matching cold key structure', () async {
        final promise = cardanoApp.getExtendedPublicKey(
          request: ExtendedPublicKeyRequest_Custom(customPath: [harden + 1853, harden + 1900, harden + 0, 0, 0]),
        );
        expectVespr(promise, throwsA(isA<LedgerException>()));
      });

      test('invalid vote key path 1', () async {
        final promise = cardanoApp.getExtendedPublicKey(
          request: ExtendedPublicKeyRequest_Custom(customPath: [harden + 1694, harden + 1815, harden + 0, 1, 0]),
        );
        expectVespr(promise, throwsA(isA<LedgerException>()));
      });

      test('invalid vote key path 2', () async {
        final promise = cardanoApp.getExtendedPublicKey(
          request: ExtendedPublicKeyRequest_Custom(customPath: [harden + 1694, harden + 1815, 17]),
        );
        expectVespr(promise, throwsA(isA<LedgerException>()));
      });

      test('invalid vote key path 3', () async {
        final promise = cardanoApp.getExtendedPublicKey(
          request: ExtendedPublicKeyRequest_Custom(customPath: [harden + 1694, harden + 1815, harden + 0, 1]),
        );
        expectVespr(promise, throwsA(isA<LedgerException>()));
      });
    });
  });
}
