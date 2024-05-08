import 'package:ledger_cardano/ledger_cardano.dart';
import 'package:ledger_cardano/src/models/parsed_address_params.dart';
import 'package:ledger_cardano/src/models/spending_data_source.dart';
import 'package:ledger_cardano/src/models/staking_data_source.dart';
import 'package:ledger_cardano/src/models/ledger_signing_path.dart';

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
      spendingDataSource: SpendingDataSource.path(
          path: LedgerSigningPath.custom([harden + 44, harden + 1815, harden + 1, 0, harden + 55])),
      stakingDataSource: StakingDataSource.none(),
    ),
    expectedResult: 'addr1stvpskppsdvpetayf0wf6p54mpl36wcwruq2enst4pg9ecps4rtyz99867sqqx4w887m5z56dxr',
  ),
  ByronTestCase(
    testName: 'mainnet 2',
    network: CardanoNetwork.mainnet(),
    addressParams: ParsedAddressParams.byron(
      spendingDataSource: SpendingDataSource.path(
          path: LedgerSigningPath.custom([harden + 44, harden + 1815, harden + 1, 0, harden + 12])),
      stakingDataSource: StakingDataSource.none(),
    ),
    expectedResult: 'addr1stvpskppsdvpc8fr8d3ajccl5eu9n3cv8qz6y76e04pnw40ch3ywexm6x7sqqx4hjeskypdm76h',
  ),
  ByronTestCase(
    testName: 'mainnet 3',
    network: CardanoNetwork.mainnet(),
    addressParams: ParsedAddressParams.byron(
      spendingDataSource: SpendingDataSource.path(
          path: LedgerSigningPath.custom([harden + 44, harden + 1815, harden + 101, 0, harden + 12])),
      stakingDataSource: StakingDataSource.none(),
    ),
    expectedResult: 'addr1stvpskppsdvpcunf3ruad7qmp49nlqpns09rnrz57zxv98nj0ggluv0lt7sqqx5xufnxzx974re',
  ),
  ByronTestCase(
    testName: 'mainnet 4',
    network: CardanoNetwork.mainnet(),
    addressParams: ParsedAddressParams.byron(
      spendingDataSource: SpendingDataSource.path(
          path: LedgerSigningPath.custom([harden + 44, harden + 1815, harden + 0, 0, harden + 1000001])),
      stakingDataSource: StakingDataSource.none(),
    ),
    expectedResult: 'addr1stvpskppsdvpe0l3937e2z8t8sevtefff5kynjhkwrtleg9f3udl0z6th6sqqxsu84ax7qlytmn',
  ),
  ByronTestCase(
    testName: 'testnet 1',
    network: CardanoNetwork.legacyTestnet(),
    addressParams: ParsedAddressParams.byron(
      spendingDataSource: SpendingDataSource.path(
          path: LedgerSigningPath.custom([harden + 44, harden + 1815, harden + 1, 0, harden + 12])),
      stakingDataSource: StakingDataSource.none(),
    ),
    expectedResult: 'addr_test1stvpskpgsdvpc8fr8d3ajccl5eu9n3cv8qz6y76e04pnw40ch3ywexm6x7ssy3g6g9cvk9cqrt4lh0539daun5',
  ),
];
