import 'package:ledger_cardano/src/models/spending_data_source.dart';
import 'package:ledger_cardano/src/models/staking_data_source.dart';

abstract interface class AddressParams {
  StakingDataSource? get stakingDataSource;

  SpendingDataSource? get spendingDataSource;
}
