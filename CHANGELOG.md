## 0.6.1

- **Breaking:** `VersionCompatibility` has new required fields `supportsMultipleVoters` and `supportsMultipleVotesPerVoter`
- Changed `displayOnDevice: true` to show the address on the device and wait for the user to confirm it (it was ignored before); `deriveAddressGeneric` accepts it too
- Added `ParsedSigningRequest.withInferredSigningMode`, which picks the signing mode the same way the JS SDK does
- Added a single retry when the device is still in a previous call (0x6E04), matching the JS SDK
- Added upfront rejection of multiple voters, or multiple votes per voter, on v7 apps
- Fixed `signTransaction` always encoding device-owned outputs for mainnet; it now uses the transaction's network
- Fixed app versions 9.0 and later being reported as incompatible
- Fixed Nano S restrictions never applying, because the version flags were not read
- Fixed CIP-15 registrations being rejected on app versions 2.3 to 5.x
- Fixed the missing witness count when signing on app versions older than 5.0
- Fixed duplicate witnesses when the same path is given as different `LedgerSigningPath` variants
- Fixed compressed IPv6 relay addresses (e.g. `2001:db8::1`) failing to parse
- Fixed several version errors naming the wrong minimum version; `recommendedVersion` for unsupported apps is now 8.0
- Updated Flutter to 3.47.6, freezed to 4.0.2, and the example app dependencies

## 0.5.10

- Added Ledger Cardano app v8 support while retaining v7 compatibility, with automatic protocol selection for transaction signing, CIP-36 vote signing, CIP-8 message signing, and native script hash derivation
- Added `TransactionSigningModes.unrestrictedTransaction` for v8 devices (requires Expert mode)
- Added v8 combined Conway delegation certificates: `stakePoolAndDRepDelegation`, `accountRegistrationDelegationToStakePool`, `accountRegistrationDelegationToDRep`, and `accountRegistrationDelegationToStakePoolAndDRep`
- Added `LedgerSigningPath.poolCold` and exported `ParsedPoolRelay` for pool registration signing
- Added v8 response-code handling with detailed, operation-specific exceptions and original device status codes
- Updated dependencies, Flutter and Android tooling, CI, and integration test coverage

## 0.5.9

- Updated deps

## 0.5.8

- Added **[SignedMessageData]** now includes info on what was signed (payload or its hash)

## 0.5.7

- Added **signMessage** support (part of [CardanoLedgerConnection])

## 0.5.6

- Updated Flutter SDK to 3.32.4 and Dart SDK to ">=3.8.0 <4.0.0"
- Updated dependencies: ledger_flutter_plus (^1.5.3), collection (^1.19.1), flutter_lints (^6.0.0), freezed (^2.5.8), and others
- Updated example app dependencies and environment to match new SDK versions
- Minor: Cleaned up VSCode settings and tool version files

## 0.5.5

- Improved error throwing and error types

## 0.5.4

- Updated ledger_flutter_plus dependency

## 0.5.3 (Full Conway support)

- Fixed signing for transactions involving certs with dRep keys/scripts
- Fixed signing for transactions involving conway voting

## 0.5.2

- Increased min ledger_flutter_plus version to support all ledget devices and fix some breaking change

## 0.5.1

- Increased min ledger_flutter_plus version

## 0.5.0

- `ShelleyAddressParamsData` : Narrowed down the arguments being accepted for each individual union type to force the user to pass correct data

## 0.4.1

- Isolated `LedgerConnectionType` extension methods in another file to avoid indirect UI imports for `ledger_cardano_plus_models.dart`

## 0.4.0

- Changed `TransactionSigningModes` from sealed class to enum

## 0.3.0

- Improved error reporting (unexpected response status from ledger gets thrown as LedgerCardanoResponseCodeException)

Note: `LedgerCardanoResponseCodeException` is a sealed class with known subtypes for common failure reasons

## 0.2.1

- Updated min supported deps to fix some bugs
- [Derive multiple xPubs] Changed to only request app version once

## 0.2.0

- Very small change in API for onPermissionRequest
- Exported more classes

## 0.1.7

- Updated one import

## 0.1.6

- Changes in imports/exports

## 0.1.4 and 0.1.5

- Small change to clear flutter imports where possible

## 0.1.3

- Exposed additional classes publicly

## 0.1.2

- Exposed additional classes publicly

## 0.1.1

- Initial release with Cardano prerelease.
