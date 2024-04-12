import 'package:ledger_cardano/src/utils/cardano_networks.dart';
import 'package:ledger_cardano/src/models/parsed_address_params.dart';
import 'package:ledger_cardano/src/models/spending_data_source.dart';
import 'package:ledger_cardano/src/models/staking_data_source.dart';

class ByronTestCase {
  final String testName;
  final CardanoNetwork network;
  final ParsedAddressParams addressParams;
  final String expectedResult;

  ByronTestCase({
    required this.testName,
    required this.network,
    required this.addressParams,
    required this.expectedResult,
  });
}

List<ByronTestCase> byronTestCases = [
  ByronTestCase(
    testName: 'mainnet 1',
    network: CardanoNetwork.mainnet(),
    addressParams: ParsedAddressParams.byron(
      protocolMagic: 764824073,
      spendingDataSource: SpendingDataSource.path(path: [44, 1815, 1, 0, 55]),
      stakingDataSource: StakingDataSource.none(),
    ),
    expectedResult: 'Ae2tdPwUPEZELF6oijm8VFmhWpujnNzyG2zCf4RxfhmWqQKHo2drRD5Uhah',
  ),
  ByronTestCase(
    testName: 'mainnet 2',
    network: CardanoNetwork.mainnet(),
    addressParams: ParsedAddressParams.byron(
      protocolMagic: 764824073,
      spendingDataSource: SpendingDataSource.path(path: [44, 1815, 1, 0, 12]),
      stakingDataSource: StakingDataSource.none(),
    ),
    expectedResult: 'Ae2tdPwUPEYyiPZzoMSN9GJMNZnn3S6ZAErrezee9s1bH6tjaX6m9Cyf3Wy',
  ),
  ByronTestCase(
    testName: 'mainnet 3',
    network: CardanoNetwork.mainnet(),
    addressParams: ParsedAddressParams.byron(
      protocolMagic: 764824073,
      spendingDataSource: SpendingDataSource.path(path: [44, 1815, 101, 0, 12]),
      stakingDataSource: StakingDataSource.none(),
    ),
    expectedResult: 'Ae2tdPwUPEZ8DtpNK9twc8YXCoJ39Uwzc2FWqo1KvGsB8Kvhk14buuESy6g',
  ),
  ByronTestCase(
    testName: 'mainnet 4',
    network: CardanoNetwork.mainnet(),
    addressParams: ParsedAddressParams.byron(
      protocolMagic: 764824073,
      spendingDataSource: SpendingDataSource.path(path: [44, 1815, 0, 0, 1000001]),
      stakingDataSource: StakingDataSource.none(),
    ),
    expectedResult: 'Ae2tdPwUPEZFxaTJw6iova9Crfc3QuoRJSdudsp5z5a9Ee7gQH7oNKrM6cW',
  ),
  ByronTestCase(
    testName: 'testnet 1',
    network: CardanoNetwork.legacyTestnet(),
    addressParams: ParsedAddressParams.byron(
      protocolMagic: 1097911063,
      spendingDataSource: SpendingDataSource.path(path: [44, 1815, 1, 0, 12]),
      stakingDataSource: StakingDataSource.none(),
    ),
    expectedResult: '2657WMsDfac5GGdHMD6sR22tyhmFvuPrBZ79hvEvuisyUK9XCcB3nu8JecKuCXEkr',
  ),
];
