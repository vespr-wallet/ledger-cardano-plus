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
