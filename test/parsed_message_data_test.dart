import 'package:flutter_test/flutter_test.dart';
import 'package:ledger_cardano_plus/ledger_cardano_plus.dart';

void main() {
  group('ParsedMessageData', () {
    late ParsedAddressParams testAddress;

    setUpAll(() {
      testAddress = ParsedAddressParams.shelley(
        shelleyAddressParams: ShelleyAddressParamsData.basePaymentKeyStakeKey(
          spendingDataSource: SpendingDataSourcePath(
            path: LedgerSigningPath.shelley(account: 0, address: 0, role: ShelleyAddressRole.payment),
          ),
          stakingDataSource: StakingDataSource.keyPath(
            path: LedgerSigningPath.shelley(account: 0, address: 0, role: ShelleyAddressRole.stake),
          ),
        ),
      );
    });

    group('hex validation', () {
      test('should accept valid hex strings', () {
        // Empty string should be valid
        expect(
          () => ParsedMessageData.keyHash(
            messageHex: '',
            signingPath: LedgerSigningPath.shelley(account: 0, address: 0, role: ShelleyAddressRole.payment),
            hashPayload: false,
          ),
          returnsNormally,
        );

        // Valid even-length hex
        expect(
          () => ParsedMessageData.keyHash(
            messageHex: '68656c6c6f20',
            signingPath: LedgerSigningPath.shelley(account: 0, address: 0, role: ShelleyAddressRole.payment),
            hashPayload: false,
          ),
          returnsNormally,
        );

        // Uppercase hex
        expect(
          () => ParsedMessageData.keyHash(
            messageHex: 'DEADBEEF',
            signingPath: LedgerSigningPath.shelley(account: 0, address: 0, role: ShelleyAddressRole.payment),
            hashPayload: false,
          ),
          returnsNormally,
        );

        // Mixed case hex
        expect(
          () => ParsedMessageData.keyHash(
            messageHex: '0123456789abcdefABCDEF',
            signingPath: LedgerSigningPath.shelley(account: 0, address: 0, role: ShelleyAddressRole.payment),
            hashPayload: false,
          ),
          returnsNormally,
        );

        // Address variant should also work
        expect(
          () => ParsedMessageData.address(
            messageHex: 'deadbeef',
            signingPath: LedgerSigningPath.shelley(account: 0, address: 0, role: ShelleyAddressRole.payment),
            hashPayload: false,
            address: testAddress,
          ),
          returnsNormally,
        );
      });

      test('should reject invalid hex strings', () {
        // Odd length
        expect(
          () => ParsedMessageData.keyHash(
            messageHex: '123',
            signingPath: LedgerSigningPath.shelley(account: 0, address: 0, role: ShelleyAddressRole.payment),
            hashPayload: false,
          ),
          throwsA(isA<LedgerCardanoValidationException>()),
        );

        // Invalid characters
        expect(
          () => ParsedMessageData.keyHash(
            messageHex: '12g4',
            signingPath: LedgerSigningPath.shelley(account: 0, address: 0, role: ShelleyAddressRole.payment),
            hashPayload: false,
          ),
          throwsA(isA<LedgerCardanoValidationException>()),
        );

        // Space in hex
        expect(
          () => ParsedMessageData.keyHash(
            messageHex: '12 34',
            signingPath: LedgerSigningPath.shelley(account: 0, address: 0, role: ShelleyAddressRole.payment),
            hashPayload: false,
          ),
          throwsA(isA<LedgerCardanoValidationException>()),
        );

        // Special characters
        expect(
          () => ParsedMessageData.keyHash(
            messageHex: '12@4',
            signingPath: LedgerSigningPath.shelley(account: 0, address: 0, role: ShelleyAddressRole.payment),
            hashPayload: false,
          ),
          throwsA(isA<LedgerCardanoValidationException>()),
        );

        // Address variant should also reject invalid hex
        expect(
          () => ParsedMessageData.address(
            messageHex: 'invalid',
            signingPath: LedgerSigningPath.shelley(account: 0, address: 0, role: ShelleyAddressRole.payment),
            hashPayload: false,
            address: testAddress,
          ),
          throwsA(isA<LedgerCardanoValidationException>()),
        );
      });
    });

    group('serializedDataFieldType', () {
      test('should return correct field type for address variant', () {
        final messageData = ParsedMessageData.address(
          messageHex: 'deadbeef',
          signingPath: LedgerSigningPath.shelley(account: 0, address: 0, role: ShelleyAddressRole.payment),
          hashPayload: false,
          address: testAddress,
        );

        expect(messageData.serializedDataFieldType, equals(0x01));
      });

      test('should return correct field type for keyHash variant', () {
        final messageData = ParsedMessageData.keyHash(
          messageHex: 'deadbeef',
          signingPath: LedgerSigningPath.shelley(account: 0, address: 0, role: ShelleyAddressRole.payment),
          hashPayload: false,
        );

        expect(messageData.serializedDataFieldType, equals(0x02));
      });
    });

    group('isAscii computed field', () {
      test('should return false when preferHexDisplay is true', () {
        final messageData = ParsedMessageData.keyHash(
          messageHex: '68656c6c6f20776f726c64', // 'hello world'
          signingPath: LedgerSigningPath.shelley(account: 0, address: 0, role: ShelleyAddressRole.payment),
          hashPayload: false,
          preferHexDisplay: true,
        );

        expect(messageData.isAscii, equals(false));
      });

      test('should return false for empty message', () {
        final messageData = ParsedMessageData.keyHash(
          messageHex: '',
          signingPath: LedgerSigningPath.shelley(account: 0, address: 0, role: ShelleyAddressRole.payment),
          hashPayload: false,
        );

        expect(messageData.isAscii, equals(false));
      });

      test('should return true for valid ASCII message', () {
        final messageData = ParsedMessageData.keyHash(
          messageHex: '68656c6c6f20776f726c64', // 'hello world'
          signingPath: LedgerSigningPath.shelley(account: 0, address: 0, role: ShelleyAddressRole.payment),
          hashPayload: false,
        );

        expect(messageData.isAscii, equals(true));
      });

      test('should return false for non-ASCII message', () {
        final messageData = ParsedMessageData.keyHash(
          messageHex: 'ff656c6c6f20776f726c64', // starts with 0xFF (non-ASCII)
          signingPath: LedgerSigningPath.shelley(account: 0, address: 0, role: ShelleyAddressRole.payment),
          hashPayload: false,
        );

        expect(messageData.isAscii, equals(false));
      });

      test('should return false for message with leading space', () {
        final messageData = ParsedMessageData.keyHash(
          messageHex: '2068656c6c6f', // ' hello' (starts with space)
          signingPath: LedgerSigningPath.shelley(account: 0, address: 0, role: ShelleyAddressRole.payment),
          hashPayload: false,
        );

        expect(messageData.isAscii, equals(false));
      });

      test('should return false for message with trailing space', () {
        final messageData = ParsedMessageData.keyHash(
          messageHex: '68656c6c6f20', // 'hello ' (ends with space)
          signingPath: LedgerSigningPath.shelley(account: 0, address: 0, role: ShelleyAddressRole.payment),
          hashPayload: false,
        );

        expect(messageData.isAscii, equals(false));
      });

      test('should return false for message with double spaces', () {
        final messageData = ParsedMessageData.keyHash(
          messageHex: '68656c6c6f2020776f726c64', // 'hello  world' (double space)
          signingPath: LedgerSigningPath.shelley(account: 0, address: 0, role: ShelleyAddressRole.payment),
          hashPayload: false,
        );

        expect(messageData.isAscii, equals(false));
      });

      test('should return false for message with non-printable characters', () {
        final messageData = ParsedMessageData.keyHash(
          messageHex: '68656c6c6f0a776f726c64', // 'hello\nworld' (contains newline)
          signingPath: LedgerSigningPath.shelley(account: 0, address: 0, role: ShelleyAddressRole.payment),
          hashPayload: false,
        );

        expect(messageData.isAscii, equals(false));
      });

      test('should work correctly for address variant as well', () {
        final messageData = ParsedMessageData.address(
          messageHex: '68656c6c6f20776f726c64', // 'hello world'
          signingPath: LedgerSigningPath.shelley(account: 0, address: 0, role: ShelleyAddressRole.payment),
          hashPayload: false,
          address: testAddress,
        );

        expect(messageData.isAscii, equals(true));
      });
    });

    group('variant identification', () {
      test('should correctly identify address variant', () {
        final messageData = ParsedMessageData.address(
          messageHex: 'deadbeef',
          signingPath: LedgerSigningPath.shelley(account: 0, address: 0, role: ShelleyAddressRole.payment),
          hashPayload: false,
          address: testAddress,
        );

        // Test that it's the address variant by checking properties
        expect(messageData.messageHex, equals('deadbeef'));
        expect(messageData.hashPayload, equals(false));
        expect(messageData.preferHexDisplay, equals(false));

        // Test runtime type
        expect(messageData, isA<ParsedMessageDataAddress>());

        // Access address-specific field
        if (messageData is ParsedMessageDataAddress) {
          expect(messageData.address, equals(testAddress));
        } else {
          fail('Should be ParsedMessageDataAddress');
        }
      });

      test('should correctly identify keyHash variant', () {
        final messageData = ParsedMessageData.keyHash(
          messageHex: 'deadbeef',
          signingPath: LedgerSigningPath.shelley(account: 0, address: 0, role: ShelleyAddressRole.payment),
          hashPayload: true,
          preferHexDisplay: true,
        );

        // Test that it's the keyHash variant by checking properties
        expect(messageData.messageHex, equals('deadbeef'));
        expect(messageData.hashPayload, equals(true));
        expect(messageData.preferHexDisplay, equals(true));

        // Test runtime type
        expect(messageData, isA<ParsedMessageDataKeyHash>());
      });
    });

    group('equality and copying', () {
      test('should be equal when all fields match', () {
        final messageData1 = ParsedMessageData.keyHash(
          messageHex: 'deadbeef',
          signingPath: LedgerSigningPath.shelley(account: 0, address: 0, role: ShelleyAddressRole.payment),
          hashPayload: false,
        );

        final messageData2 = ParsedMessageData.keyHash(
          messageHex: 'deadbeef',
          signingPath: LedgerSigningPath.shelley(account: 0, address: 0, role: ShelleyAddressRole.payment),
          hashPayload: false,
        );

        expect(messageData1, equals(messageData2));
        expect(messageData1.hashCode, equals(messageData2.hashCode));
      });

      test('should support copyWith', () {
        final original = ParsedMessageData.keyHash(
          messageHex: 'deadbeef',
          signingPath: LedgerSigningPath.shelley(account: 0, address: 0, role: ShelleyAddressRole.payment),
          hashPayload: false,
        );

        final copied = original.copyWith(
          messageHex: 'cafebabe',
          hashPayload: true,
        );

        expect(copied.messageHex, equals('cafebabe'));
        expect(copied.hashPayload, equals(true));
        expect(copied.signingPath, equals(original.signingPath));
        expect(copied.preferHexDisplay, equals(original.preferHexDisplay));
      });
    });
  });
}
