<br />
<div align="center">
  <a href="https://www.ledger.com/">
    <img src="https://i.ibb.co/PMvdnnz/ledger-cardano.jpg" width="400"/>
  </a>

<h1 align="center">ledger-cardano</h1>

<p align="center">
    A Flutter Ledger App Plugin for the Cardano blockchain
    <br />
    <a href="https://pub.dev/documentation/ledger_cardano/latest/"><strong>« Explore the docs »</strong></a>
    <br />
    <br />
    <a href="https://github.com/vespr-wallet/ledger-cardano/issues">Report Bug</a>
    · <a href="https://github.com/vespr-wallet/ledger-cardano/issues">Request Feature</a>
    · <a href="https://pub.dev/packages/ledger_cardano">Ledger Flutter</a>
  </p>
</div>
<br/>

---

## Overview

Ledger Nano devices are the perfect hardware wallets for managing your crypto & NFTs on the go.
This Flutter package is a plugin for the [ledger_flutter](https://pub.dev/packages/ledger_cardano) package to get accounts and sign transactions using the Cardano blockchain.

## Getting started

### Installation

Install the latest version of this package via pub.dev:

```yaml
ledger_cardano: ^latest-version
```

For integration with the Ledger Flutter package, check out the documentation [here](https://pub.dev/packages/ledger_flutter).

### Setup

Create a new instance of an `CardanoLedgerApp` and pass an instance of your `Ledger` object.

```dart
final app = CardanoLedgerApp(ledger);
```

## Usage

### TODO

## Sponsors

Our top sponsors are shown below!

<table>
    <tbody>
        <tr>
            <td align="center" style="background-color: white">
                <a href="https://projectcatalyst.io/"><img src="https://projectcatalyst.org/catalyst-logo.svg" width="225"/></a>
                <p><a href="https://projectcatalyst.io/"><strong>Project Catalyst</strong></a></p>
            </td>
        </tr>
    </tbody>
</table>

## Contributing

Contributions are what make the open source community such an amazing place to learn, inspire, and create. Any contributions you make are **greatly appreciated**.

If you have a suggestion that would make this better, please fork the repo and create a pull request. You can also simply open an issue with the tag `enhancement`.

1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/my-feature`)
3. Commit your Changes (`git commit -m 'feat: my new feature`)
4. Push to the Branch (`git push origin feature/my-feature`)
5. Open a Pull Request

Please read our [Contributing guidelines](CONTRIBUTING.md) and try to follow [Conventional Commits](https://www.conventionalcommits.org/en/v1.0.0/).

## Running Integration Tests

To run the integration tests for the `ledger-cardano` SDK, follow these steps:

1. **Set Up Your Environment:**

   - Ensure that you have Flutter installed on your machine. You can download it from [Flutter's official site](https://flutter.dev/docs/get-started/install).

2. **Clone the Repository:**

   - If you haven't already, clone the `ledger-cardano` repository from GitHub:

   ```bash
   git clone https://github.com/vespr-wallet/ledger-cardano.git
   cd ledger-cardano
   ```

3. **Navigate to the Integration Tests Directory:**

   - Change to the directory containing the integration tests:

   ```bash
   cd example/integration_test
   ```

4. **Run the Tests:**

   - Use the following Flutter command to execute the integration tests:

   ```bash
   flutter test integration_test
   ```

   - To run a specific integration test file, provide the path to the test file:

   ```bash
   flutter test integration_test/cardano_ledger_serial_version_tests.dart
   ```

   - To run a specific test case within a test file, use the `-n` flag followed by the test name:

   ```bash
   flutter test integration_test/cardano_ledger_serial_version_tests.dart -n "Should correctly get the serial number of the device"
   ```

   Make sure your development environment is properly set up to communicate with the Ledger device, and that the device is connected and unlocked before running the tests.

## License

The ledger_cardano SDK is released under the MIT License (MIT). See LICENSE for details.
