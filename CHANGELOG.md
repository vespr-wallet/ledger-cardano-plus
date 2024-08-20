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
