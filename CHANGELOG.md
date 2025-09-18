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
