import 'package:ledger_cardano_plus/ledger_cardano_plus.dart';
import 'package:ledger_cardano_plus/src/models/parsed_address_params.dart';
import 'package:ledger_cardano_plus/src/models/shelley_address_params.dart';
import 'package:ledger_cardano_plus/src/models/spending_data_source.dart';
import 'package:ledger_cardano_plus/src/models/staking_data_source.dart';
import 'package:ledger_cardano_plus/src/models/ledger_signing_path.dart';

class ShelleyTestCase {
  final String testName;
  final CardanoNetwork network;
  final ParsedAddressParams addressParams;
  final String expectedResult;
  final CardanoVersion? minSupportedVersion;

  ShelleyTestCase({
    required this.testName,
    required this.network,
    required this.addressParams,
    required this.expectedResult,
    this.minSupportedVersion,
  });
}

List<ShelleyTestCase> shelleyTestCases = [
  ShelleyTestCase(
    testName: 'base address path/path 1',
    network: CardanoNetwork.custom(
        customNetworkId: 0x03, customNetworkMagic: 47, customPaymentBech32Hrp: 'addr', customStakeBech32Hrp: 'stake'),
    addressParams: ParsedAddressParams.shelley(
      shelleyAddressParams: ShelleyAddressParamsData.basePaymentKeyStakeKey(
        spendingDataSource:
            SpendingDataSource.path(path: LedgerSigningPath.custom([harden + 1852, harden + 1815, harden + 0, 0, 1])),
        stakingDataSource:
            StakingDataSource.path(path: LedgerSigningPath.custom([harden + 1852, harden + 1815, harden + 0, 2, 0])),
      ),
    ),
    expectedResult:
        'addr1qdd9xypc9xnnstp2kas3r7mf7ylxn4sksfxxypvwgnc63vcayfawlf9hwv2fzuygt2km5v92kvf8e3s3mk7ynxw77cwqdquehe',
  ),
  ShelleyTestCase(
    testName: 'base address path/path 2',
    network: CardanoNetwork.legacyTestnet(),
    addressParams: ParsedAddressParams.shelley(
      shelleyAddressParams: ShelleyAddressParamsData.basePaymentKeyStakeKey(
        spendingDataSource:
            SpendingDataSource.path(path: LedgerSigningPath.custom([harden + 1852, harden + 1815, harden + 0, 0, 1])),
        stakingDataSource:
            StakingDataSource.path(path: LedgerSigningPath.custom([harden + 1852, harden + 1815, harden + 0, 2, 0])),
      ),
    ),
    expectedResult:
        'addr_test1qpd9xypc9xnnstp2kas3r7mf7ylxn4sksfxxypvwgnc63vcayfawlf9hwv2fzuygt2km5v92kvf8e3s3mk7ynxw77cwq9nnhk4',
  ),
  ShelleyTestCase(
    testName: 'base address path/path unusual spending path account',
    network: CardanoNetwork.custom(
        customNetworkId: 0x03, customNetworkMagic: 47, customPaymentBech32Hrp: 'addr', customStakeBech32Hrp: 'stake'),
    addressParams: ParsedAddressParams.shelley(
      shelleyAddressParams: ShelleyAddressParamsData.basePaymentKeyStakeKey(
        spendingDataSource:
            SpendingDataSource.path(path: LedgerSigningPath.custom([harden + 1852, harden + 1815, harden + 101, 0, 1])),
        stakingDataSource:
            StakingDataSource.path(path: LedgerSigningPath.custom([harden + 1852, harden + 1815, harden + 0, 2, 0])),
      ),
    ),
    expectedResult:
        'addr1qv6dcymepkghuyt0za9jxg5hn89art9y8yjcvhxclxdhndsayfawlf9hwv2fzuygt2km5v92kvf8e3s3mk7ynxw77cwqdqq9xn',
  ),
  ShelleyTestCase(
    testName: 'base address path/path unusual spending path address index',
    network: CardanoNetwork.custom(
        customNetworkId: 0x03, customNetworkMagic: 47, customPaymentBech32Hrp: 'addr', customStakeBech32Hrp: 'stake'),
    addressParams: ParsedAddressParams.shelley(
      shelleyAddressParams: ShelleyAddressParamsData.basePaymentKeyStakeKey(
        spendingDataSource: SpendingDataSource.path(
            path: LedgerSigningPath.custom([harden + 1852, harden + 1815, harden + 1, 0, 1000001])),
        stakingDataSource:
            StakingDataSource.path(path: LedgerSigningPath.custom([harden + 1852, harden + 1815, harden + 0, 2, 0])),
      ),
    ),
    expectedResult:
        'addr1q08rwk27cdm6vcp272pqcwq3t3gzea0q5xws2z84zzejrkcayfawlf9hwv2fzuygt2km5v92kvf8e3s3mk7ynxw77cwq2cxp3q',
  ),
  ShelleyTestCase(
    testName: 'base address path/path unusual staking path account',
    network: CardanoNetwork.custom(
        customNetworkId: 0x03, customNetworkMagic: 47, customPaymentBech32Hrp: 'addr', customStakeBech32Hrp: 'stake'),
    addressParams: ParsedAddressParams.shelley(
      shelleyAddressParams: ShelleyAddressParamsData.basePaymentKeyStakeKey(
        spendingDataSource:
            SpendingDataSource.path(path: LedgerSigningPath.custom([harden + 1852, harden + 1815, harden + 10, 0, 4])),
        stakingDataSource:
            StakingDataSource.path(path: LedgerSigningPath.custom([harden + 1852, harden + 1815, harden + 101, 2, 0])),
      ),
    ),
    expectedResult:
        'addr1qwpug24twgud02405vncq9gmthq3r8e3a6l3855r8jpkgjnfwjwuljn5a0p37d4yvxevnte42mffrpmf4823vcdq62xqm8xq3j',
  ),
  ShelleyTestCase(
    testName: 'base address path/path multidelegation stake key usual',
    network: CardanoNetwork.legacyTestnet(),
    addressParams: ParsedAddressParams.shelley(
      shelleyAddressParams: ShelleyAddressParamsData.basePaymentKeyStakeKey(
        spendingDataSource:
            SpendingDataSource.path(path: LedgerSigningPath.custom([harden + 1852, harden + 1815, harden + 0, 0, 1])),
        stakingDataSource:
            StakingDataSource.path(path: LedgerSigningPath.custom([harden + 1852, harden + 1815, harden + 0, 2, 60])),
      ),
    ),
    minSupportedVersion: CardanoVersion.fromVersionCode(50002),
    expectedResult:
        'addr_test1qpd9xypc9xnnstp2kas3r7mf7ylxn4sksfxxypvwgnc63vl404mjsaz2xyzvegxxrpx5ltrjgy4qws4ataqtv5lp2h3q30eyjm',
  ),
  ShelleyTestCase(
    testName: 'base address path/path multidelegation stake key unusual account',
    network: CardanoNetwork.custom(
        customNetworkId: 0x03, customNetworkMagic: 47, customPaymentBech32Hrp: 'addr', customStakeBech32Hrp: 'stake'),
    addressParams: ParsedAddressParams.shelley(
      shelleyAddressParams: ShelleyAddressParamsData.basePaymentKeyStakeKey(
        spendingDataSource:
            SpendingDataSource.path(path: LedgerSigningPath.custom([harden + 1852, harden + 1815, harden + 0, 0, 1])),
        stakingDataSource:
            StakingDataSource.path(path: LedgerSigningPath.custom([harden + 1852, harden + 1815, harden + 0, 2, 60])),
      ),
    ),
    minSupportedVersion: CardanoVersion.fromVersionCode(50002),
    expectedResult:
        'addr1qdd9xypc9xnnstp2kas3r7mf7ylxn4sksfxxypvwgnc63vmugd5zn06wnjkd3e4gz260kt832axwmcruch85mkpqnv2qzt38al',
  ),
  ShelleyTestCase(
    testName: 'base address path/path multidelegation stake key unusual index',
    network: CardanoNetwork.custom(
        customNetworkId: 0x03, customNetworkMagic: 47, customPaymentBech32Hrp: 'addr', customStakeBech32Hrp: 'stake'),
    addressParams: ParsedAddressParams.shelley(
      shelleyAddressParams: ShelleyAddressParamsData.basePaymentKeyStakeKey(
        spendingDataSource:
            SpendingDataSource.path(path: LedgerSigningPath.custom([harden + 1852, harden + 1815, harden + 0, 0, 1])),
        stakingDataSource: StakingDataSource.path(
            path: LedgerSigningPath.custom([harden + 1852, harden + 1815, harden + 0, 2, 1000001])),
      ),
    ),
    minSupportedVersion: CardanoVersion.fromVersionCode(50002),
    expectedResult:
        'addr1qdd9xypc9xnnstp2kas3r7mf7ylxn4sksfxxypvwgnc63v7z7lu6g8ncaa9ksx9q5lg2676a59a93y6fv86qzzdx4k5qjp9hw2',
  ),
  ShelleyTestCase(
    testName: 'base address path/keyHash 1',
    network: CardanoNetwork.legacyTestnet(),
    addressParams: ParsedAddressParams.shelley(
      shelleyAddressParams: ShelleyAddressParamsData.basePaymentKeyStakeKey(
        spendingDataSource:
            SpendingDataSource.path(path: LedgerSigningPath.custom([harden + 1852, harden + 1815, harden + 0, 0, 1])),
        stakingDataSource:
            StakingDataSource.keyHash(keyHashHex: '1d227aefa4b773149170885aadba30aab3127cc611ddbc4999def61c'),
      ),
    ),
    expectedResult:
        'addr_test1qpd9xypc9xnnstp2kas3r7mf7ylxn4sksfxxypvwgnc63vcayfawlf9hwv2fzuygt2km5v92kvf8e3s3mk7ynxw77cwq9nnhk4',
  ),
  ShelleyTestCase(
    testName: 'base address path/keyHash 2',
    network: CardanoNetwork.custom(
        customNetworkId: 0x03, customNetworkMagic: 47, customPaymentBech32Hrp: 'addr', customStakeBech32Hrp: 'stake'),
    addressParams: ParsedAddressParams.shelley(
      shelleyAddressParams: ShelleyAddressParamsData.basePaymentKeyStakeKey(
        spendingDataSource:
            SpendingDataSource.path(path: LedgerSigningPath.custom([harden + 1852, harden + 1815, harden + 0, 0, 1])),
        stakingDataSource:
            StakingDataSource.keyHash(keyHashHex: '122a946b9ad3d2ddf029d3a828f0468aece76895f15c9efbd69b4277'),
      ),
    ),
    expectedResult:
        'addr1qdd9xypc9xnnstp2kas3r7mf7ylxn4sksfxxypvwgnc63vcj922xhxkn6twlq2wn4q50q352annk3903tj00h45mgfmswz93l5',
  ),
  ShelleyTestCase(
    testName: 'base address path/keyHash unusual account',
    network: CardanoNetwork.legacyTestnet(),
    addressParams: ParsedAddressParams.shelley(
      shelleyAddressParams: ShelleyAddressParamsData.basePaymentKeyStakeKey(
        spendingDataSource:
            SpendingDataSource.path(path: LedgerSigningPath.custom([harden + 1852, harden + 1815, harden + 101, 0, 1])),
        stakingDataSource:
            StakingDataSource.keyHash(keyHashHex: '1d227aefa4b773149170885aadba30aab3127cc611ddbc4999def61c'),
      ),
    ),
    expectedResult:
        'addr_test1qq6dcymepkghuyt0za9jxg5hn89art9y8yjcvhxclxdhndsayfawlf9hwv2fzuygt2km5v92kvf8e3s3mk7ynxw77cwq9n0t8l',
  ),
  ShelleyTestCase(
    testName: 'base address path/keyHash unusual address index',
    network: CardanoNetwork.legacyTestnet(),
    addressParams: ParsedAddressParams.shelley(
      shelleyAddressParams: ShelleyAddressParamsData.basePaymentKeyStakeKey(
        spendingDataSource: SpendingDataSource.path(
            path: LedgerSigningPath.custom([harden + 1852, harden + 1815, harden + 0, 0, harden + 1])),
        stakingDataSource:
            StakingDataSource.keyHash(keyHashHex: '1d227aefa4b773149170885aadba30aab3127cc611ddbc4999def61c'),
      ),
    ),
    expectedResult:
        'addr_test1qppn39wu9az8zv5c6k59ke0j2udmjzy42uelpsjjcadf0fgayfawlf9hwv2fzuygt2km5v92kvf8e3s3mk7ynxw77cwqelwlvz',
  ),
  ShelleyTestCase(
    testName: 'base address scriptHash/path',
    network: CardanoNetwork.custom(
        customNetworkId: 0x03, customNetworkMagic: 47, customPaymentBech32Hrp: 'addr', customStakeBech32Hrp: 'stake'),
    addressParams: ParsedAddressParams.shelley(
      shelleyAddressParams: ShelleyAddressParamsData.basePaymentScriptStakeKey(
        spendingDataSource:
            SpendingDataSource.scriptHash(scriptHashHex: '122a946b9ad3d2ddf029d3a828f0468aece76895f15c9efbd69b4277'),
        stakingDataSource:
            StakingDataSource.path(path: LedgerSigningPath.custom([harden + 1852, harden + 1815, harden + 0, 2, 0])),
      ),
    ),
    expectedResult:
        'addr1zvfz49rtntfa9h0s98f6s28sg69weemgjhc4e8hm66d5yacayfawlf9hwv2fzuygt2km5v92kvf8e3s3mk7ynxw77cwq8dxrpu',
  ),
  ShelleyTestCase(
    testName: 'base address scriptHash/path multidelegation',
    network: CardanoNetwork.custom(
        customNetworkId: 0x03, customNetworkMagic: 47, customPaymentBech32Hrp: 'addr', customStakeBech32Hrp: 'stake'),
    addressParams: ParsedAddressParams.shelley(
      shelleyAddressParams: ShelleyAddressParamsData.basePaymentScriptStakeKey(
        spendingDataSource:
            SpendingDataSource.scriptHash(scriptHashHex: '122a946b9ad3d2ddf029d3a828f0468aece76895f15c9efbd69b4277'),
        stakingDataSource:
            StakingDataSource.path(path: LedgerSigningPath.custom([harden + 1852, harden + 1815, harden + 0, 2, 3])),
      ),
    ),
    minSupportedVersion: CardanoVersion.fromVersionCode(50002),
    expectedResult:
        'addr1zvfz49rtntfa9h0s98f6s28sg69weemgjhc4e8hm66d5yauc4nklr34kj8uk8kfgz3lkv6tu0ndr3x0rp3snqdayaxgqwrgxu2',
  ),
  ShelleyTestCase(
    testName: 'base address scriptHash/path unusual account',
    network: CardanoNetwork.legacyTestnet(),
    addressParams: ParsedAddressParams.shelley(
      shelleyAddressParams: ShelleyAddressParamsData.basePaymentScriptStakeKey(
        spendingDataSource:
            SpendingDataSource.scriptHash(scriptHashHex: '122a946b9ad3d2ddf029d3a828f0468aece76895f15c9efbd69b4277'),
        stakingDataSource:
            StakingDataSource.path(path: LedgerSigningPath.custom([harden + 1852, harden + 1815, harden + 200, 2, 0])),
      ),
    ),
    expectedResult:
        'addr_test1zqfz49rtntfa9h0s98f6s28sg69weemgjhc4e8hm66d5yaad7dqp9clvjdu902n5app3d70rnkax3wjy8n78fz29uhfqzs7q26',
  ),
  ShelleyTestCase(
    testName: 'base address path/scriptHash',
    network: CardanoNetwork.custom(
        customNetworkId: 0x03, customNetworkMagic: 47, customPaymentBech32Hrp: 'addr', customStakeBech32Hrp: 'stake'),
    addressParams: ParsedAddressParams.shelley(
      shelleyAddressParams: ShelleyAddressParamsData.basePaymentKeyStakeScript(
        spendingDataSource:
            SpendingDataSource.path(path: LedgerSigningPath.custom([harden + 1852, harden + 1815, harden + 0, 0, 1])),
        stakingDataSource:
            StakingDataSource.scriptHash(scriptHashHex: '122a946b9ad3d2ddf029d3a828f0468aece76895f15c9efbd69b4277'),
      ),
    ),
    expectedResult:
        'addr1ydd9xypc9xnnstp2kas3r7mf7ylxn4sksfxxypvwgnc63vcj922xhxkn6twlq2wn4q50q352annk3903tj00h45mgfmssu7w24',
  ),
  ShelleyTestCase(
    testName: 'enterprise path 1',
    network: CardanoNetwork.legacyTestnet(),
    addressParams: ParsedAddressParams.shelley(
      shelleyAddressParams: ShelleyAddressParamsData.enterpriseKey(
        spendingDataSource:
            SpendingDataSource.path(path: LedgerSigningPath.custom([harden + 1852, harden + 1815, harden + 0, 0, 1])),
      ),
    ),
    expectedResult: 'addr_test1vpd9xypc9xnnstp2kas3r7mf7ylxn4sksfxxypvwgnc63vc7t2fks',
  ),
  ShelleyTestCase(
    testName: 'enterprise path 2',
    network: CardanoNetwork.custom(
        customNetworkId: 0x03, customNetworkMagic: 47, customPaymentBech32Hrp: 'addr', customStakeBech32Hrp: 'stake'),
    addressParams: ParsedAddressParams.shelley(
      shelleyAddressParams: ShelleyAddressParamsData.enterpriseKey(
        spendingDataSource:
            SpendingDataSource.path(path: LedgerSigningPath.custom([harden + 1852, harden + 1815, harden + 0, 0, 1])),
      ),
    ),
    expectedResult: 'addr1vdd9xypc9xnnstp2kas3r7mf7ylxn4sksfxxypvwgnc63vc9wh7em',
  ),
  ShelleyTestCase(
    testName: 'enterprise path unusual account',
    network: CardanoNetwork.custom(
        customNetworkId: 0x03, customNetworkMagic: 47, customPaymentBech32Hrp: 'addr', customStakeBech32Hrp: 'stake'),
    addressParams: ParsedAddressParams.shelley(
      shelleyAddressParams: ShelleyAddressParamsData.enterpriseKey(
        spendingDataSource:
            SpendingDataSource.path(path: LedgerSigningPath.custom([harden + 1852, harden + 1815, harden + 101, 0, 1])),
      ),
    ),
    expectedResult: 'addr1vv6dcymepkghuyt0za9jxg5hn89art9y8yjcvhxclxdhnds25ctky',
  ),
  ShelleyTestCase(
    testName: 'enterprise script 1',
    network: CardanoNetwork.legacyTestnet(),
    addressParams: ParsedAddressParams.shelley(
      shelleyAddressParams: ShelleyAddressParamsData.enterpriseScript(
        spendingDataSource:
            SpendingDataSource.scriptHash(scriptHashHex: '122a946b9ad3d2ddf029d3a828f0468aece76895f15c9efbd69b4277'),
      ),
    ),
    expectedResult: 'addr_test1wqfz49rtntfa9h0s98f6s28sg69weemgjhc4e8hm66d5yacn4n6n2',
  ),
  ShelleyTestCase(
    testName: 'enterprise script 2',
    network: CardanoNetwork.custom(
        customNetworkId: 0x03, customNetworkMagic: 47, customPaymentBech32Hrp: 'addr', customStakeBech32Hrp: 'stake'),
    addressParams: ParsedAddressParams.shelley(
      shelleyAddressParams: ShelleyAddressParamsData.enterpriseScript(
        spendingDataSource:
            SpendingDataSource.scriptHash(scriptHashHex: '122a946b9ad3d2ddf029d3a828f0468aece76895f15c9efbd69b4277'),
      ),
    ),
    expectedResult: 'addr1wvfz49rtntfa9h0s98f6s28sg69weemgjhc4e8hm66d5yacgswdup',
  ),
  ShelleyTestCase(
    testName: 'pointer path 1',
    network: CardanoNetwork.legacyTestnet(),
    addressParams: ParsedAddressParams.shelley(
      shelleyAddressParams: ShelleyAddressParamsData.pointerKey(
        spendingDataSource:
            SpendingDataSource.path(path: LedgerSigningPath.custom([harden + 1852, harden + 1815, harden + 0, 0, 1])),
        stakingDataSource: StakingDataSource.blockchainPointer(blockIndex: 1, txIndex: 2, certificateIndex: 3),
      ),
    ),
    expectedResult: 'addr_test1gpd9xypc9xnnstp2kas3r7mf7ylxn4sksfxxypvwgnc63vcpqgpsg6s2p6',
  ),
  ShelleyTestCase(
    testName: 'pointer path 2',
    network: CardanoNetwork.custom(
        customNetworkId: 0x03, customNetworkMagic: 47, customPaymentBech32Hrp: 'addr', customStakeBech32Hrp: 'stake'),
    addressParams: ParsedAddressParams.shelley(
      shelleyAddressParams: ShelleyAddressParamsData.pointerKey(
        spendingDataSource:
            SpendingDataSource.path(path: LedgerSigningPath.custom([harden + 1852, harden + 1815, harden + 0, 0, 1])),
        stakingDataSource: StakingDataSource.blockchainPointer(blockIndex: 24157, txIndex: 177, certificateIndex: 42),
      ),
    ),
    expectedResult: 'addr1gdd9xypc9xnnstp2kas3r7mf7ylxn4sksfxxypvwgnc63vuph3wczvf288aeyu',
  ),
  ShelleyTestCase(
    testName: 'pointer path 3',
    network: CardanoNetwork.custom(
        customNetworkId: 0x03, customNetworkMagic: 47, customPaymentBech32Hrp: 'addr', customStakeBech32Hrp: 'stake'),
    addressParams: ParsedAddressParams.shelley(
      shelleyAddressParams: ShelleyAddressParamsData.pointerKey(
        spendingDataSource:
            SpendingDataSource.path(path: LedgerSigningPath.custom([harden + 1852, harden + 1815, harden + 0, 0, 1])),
        stakingDataSource: StakingDataSource.blockchainPointer(blockIndex: 0, txIndex: 0, certificateIndex: 0),
      ),
    ),
    expectedResult: 'addr1gdd9xypc9xnnstp2kas3r7mf7ylxn4sksfxxypvwgnc63vcqqqqqnnd32q',
  ),
  ShelleyTestCase(
    testName: 'pointer address unusual account',
    network: CardanoNetwork.legacyTestnet(),
    addressParams: ParsedAddressParams.shelley(
      shelleyAddressParams: ShelleyAddressParamsData.pointerKey(
        spendingDataSource: SpendingDataSource.path(
            path: LedgerSigningPath.custom([harden + 1852, harden + 1815, harden + 1000, 0, 1])),
        stakingDataSource: StakingDataSource.blockchainPointer(blockIndex: 1, txIndex: 0, certificateIndex: 0),
      ),
    ),
    expectedResult: 'addr_test1gq8vvh30wke6m5wl2xgwg5luus7zl0pr8kewjzq0wyyga6gpqqqqze3mqg',
  ),
  ShelleyTestCase(
    testName: 'pointer address unusual address index',
    network: CardanoNetwork.legacyTestnet(),
    addressParams: ParsedAddressParams.shelley(
      shelleyAddressParams: ShelleyAddressParamsData.pointerKey(
        spendingDataSource: SpendingDataSource.path(
            path: LedgerSigningPath.custom([harden + 1852, harden + 1815, harden + 0, 0, harden + 1])),
        stakingDataSource: StakingDataSource.blockchainPointer(blockIndex: 0, txIndex: 7, certificateIndex: 0),
      ),
    ),
    expectedResult: 'addr_test1gppn39wu9az8zv5c6k59ke0j2udmjzy42uelpsjjcadf0fgqquqqpn6uug',
  ),
  ShelleyTestCase(
    testName: 'pointer script 1',
    network: CardanoNetwork.legacyTestnet(),
    addressParams: ParsedAddressParams.shelley(
      shelleyAddressParams: ShelleyAddressParamsData.pointerScript(
        spendingDataSource:
            SpendingDataSource.scriptHash(scriptHashHex: '122a946b9ad3d2ddf029d3a828f0468aece76895f15c9efbd69b4277'),
        stakingDataSource: StakingDataSource.blockchainPointer(blockIndex: 1, txIndex: 2, certificateIndex: 3),
      ),
    ),
    expectedResult: 'addr_test12qfz49rtntfa9h0s98f6s28sg69weemgjhc4e8hm66d5yacpqgpsrwzzw9',
  ),
  ShelleyTestCase(
    testName: 'pointer script 2',
    network: CardanoNetwork.custom(
        customNetworkId: 0x03, customNetworkMagic: 47, customPaymentBech32Hrp: 'addr', customStakeBech32Hrp: 'stake'),
    addressParams: ParsedAddressParams.shelley(
      shelleyAddressParams: ShelleyAddressParamsData.pointerScript(
        spendingDataSource:
            SpendingDataSource.scriptHash(scriptHashHex: '122a946b9ad3d2ddf029d3a828f0468aece76895f15c9efbd69b4277'),
        stakingDataSource: StakingDataSource.blockchainPointer(blockIndex: 24157, txIndex: 177, certificateIndex: 42),
      ),
    ),
    expectedResult: 'addr12vfz49rtntfa9h0s98f6s28sg69weemgjhc4e8hm66d5yauph3wczvf2sykph7',
  ),
  ShelleyTestCase(
    testName: 'pointer script 3',
    network: CardanoNetwork.custom(
        customNetworkId: 0x03, customNetworkMagic: 47, customPaymentBech32Hrp: 'addr', customStakeBech32Hrp: 'stake'),
    addressParams: ParsedAddressParams.shelley(
      shelleyAddressParams: ShelleyAddressParamsData.pointerScript(
        spendingDataSource:
            SpendingDataSource.scriptHash(scriptHashHex: '122a946b9ad3d2ddf029d3a828f0468aece76895f15c9efbd69b4277'),
        stakingDataSource: StakingDataSource.blockchainPointer(blockIndex: 0, txIndex: 0, certificateIndex: 0),
      ),
    ),
    expectedResult: 'addr12vfz49rtntfa9h0s98f6s28sg69weemgjhc4e8hm66d5yacqqqqqc8le9l',
  ),
  ShelleyTestCase(
    testName: 'reward path 1',
    network: CardanoNetwork.legacyTestnet(),
    addressParams: ParsedAddressParams.shelley(
      shelleyAddressParams: ShelleyAddressParamsData.rewardKey(
        stakingDataSource:
            StakingDataSource.path(path: LedgerSigningPath.custom([harden + 1852, harden + 1815, harden + 0, 2, 0])),
      ),
    ),
    expectedResult: 'stake_test1uqwjy7h05jmhx9y3wzy94td6xz4txynuccgam0zfn800v8q8mmqwc',
  ),
  ShelleyTestCase(
    testName: 'reward path 2',
    network: CardanoNetwork.custom(
        customNetworkId: 0x03, customNetworkMagic: 47, customPaymentBech32Hrp: 'addr', customStakeBech32Hrp: 'stake'),
    addressParams: ParsedAddressParams.shelley(
      shelleyAddressParams: ShelleyAddressParamsData.rewardKey(
        stakingDataSource:
            StakingDataSource.path(path: LedgerSigningPath.custom([harden + 1852, harden + 1815, harden + 0, 2, 0])),
      ),
    ),
    expectedResult: 'stake1uvwjy7h05jmhx9y3wzy94td6xz4txynuccgam0zfn800v8qqucf2t',
  ),
  ShelleyTestCase(
    testName: 'reward multidelegation usual',
    network: CardanoNetwork.legacyTestnet(),
    addressParams: ParsedAddressParams.shelley(
      shelleyAddressParams: ShelleyAddressParamsData.rewardKey(
        stakingDataSource:
            StakingDataSource.path(path: LedgerSigningPath.custom([harden + 1852, harden + 1815, harden + 0, 2, 1])),
      ),
    ),
    minSupportedVersion: CardanoVersion.fromVersionCode(50002),
    expectedResult: 'stake_test1uqktgr9psuz0fxggkx9ald8wu8kgpckr2d9kjfxrum6sm3qp87652',
  ),
  ShelleyTestCase(
    testName: 'reward multidelegation unusual account',
    network: CardanoNetwork.legacyTestnet(),
    addressParams: ParsedAddressParams.shelley(
      shelleyAddressParams: ShelleyAddressParamsData.rewardKey(
        stakingDataSource:
            StakingDataSource.path(path: LedgerSigningPath.custom([harden + 1852, harden + 1815, harden + 101, 2, 1])),
      ),
    ),
    minSupportedVersion: CardanoVersion.fromVersionCode(50002),
    expectedResult: 'stake_test1up0umv478zejdvynrddaddjzcztnmm2phsqs77cghyuah6qnjw5hh',
  ),
  ShelleyTestCase(
    testName: 'reward multidelegation unusual index',
    network: CardanoNetwork.legacyTestnet(),
    addressParams: ParsedAddressParams.shelley(
      shelleyAddressParams: ShelleyAddressParamsData.rewardKey(
        stakingDataSource: StakingDataSource.path(
            path: LedgerSigningPath.shelley(account: 0, address: 20000000, role: ShelleyAddressRole.stake)),
      ),
    ),
    minSupportedVersion: CardanoVersion.fromVersionCode(50002),
    expectedResult: 'stake_test1urgn94qu0ewtt6f7l4sp6jm5vjv5u3gktevzy46s2qn92yshap4ze',
  ),
  ShelleyTestCase(
    testName: 'reward path unusual account',
    network: CardanoNetwork.custom(
        customNetworkId: 0x03, customNetworkMagic: 47, customPaymentBech32Hrp: 'addr', customStakeBech32Hrp: 'stake'),
    addressParams: ParsedAddressParams.shelley(
      shelleyAddressParams: ShelleyAddressParamsData.rewardKey(
        stakingDataSource:
            StakingDataSource.path(path: LedgerSigningPath.custom([harden + 1852, harden + 1815, harden + 300, 2, 0])),
      ),
    ),
    expectedResult: 'stake1u08h6dxajsaatnakylrd4pdhfrv7z3lkzgsq60fhvejux0gpcrd2j',
  ),
  ShelleyTestCase(
    testName: 'reward script 1',
    network: CardanoNetwork.legacyTestnet(),
    addressParams: ParsedAddressParams.shelley(
      shelleyAddressParams: ShelleyAddressParamsData.rewardScript(
        stakingScriptHashHex: '122a946b9ad3d2ddf029d3a828f0468aece76895f15c9efbd69b4277',
      ),
    ),
    expectedResult: 'stake_test17qfz49rtntfa9h0s98f6s28sg69weemgjhc4e8hm66d5yacnadzyq',
  ),
  ShelleyTestCase(
    testName: 'reward script 2',
    network: CardanoNetwork.custom(
        customNetworkId: 0x03, customNetworkMagic: 47, customPaymentBech32Hrp: 'addr', customStakeBech32Hrp: 'stake'),
    addressParams: ParsedAddressParams.shelley(
      shelleyAddressParams: ShelleyAddressParamsData.rewardScript(
        stakingScriptHashHex: '122a946b9ad3d2ddf029d3a828f0468aece76895f15c9efbd69b4277',
      ),
    ),
    expectedResult: 'stake17vfz49rtntfa9h0s98f6s28sg69weemgjhc4e8hm66d5yac56wtqn',
  ),
];
