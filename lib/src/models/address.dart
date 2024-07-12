import 'package:ledger_cardano_plus/src/utils/constants.dart';

abstract interface class AddressAbstract {
  AddressType get type;
}

enum AddressBase implements AddressAbstract {
  paymentKeyStakeKey(AddressType.basePaymentKeyStakeKey),
  paymentKeyStakeScript(AddressType.basePaymentKeyStakeScript),
  paymentScriptStakeKey(AddressType.basePaymentScriptStakeKey),
  paymentScriptStakeScript(AddressType.basePaymentScriptStakeScript),
  ;

  @override
  final AddressType type;
  const AddressBase(this.type);
}

enum AddressReward implements AddressAbstract {
  key(AddressType.rewardKey),
  script(AddressType.rewardScript),
  ;

  @override
  final AddressType type;
  const AddressReward(this.type);
}

enum AddressEnterprise implements AddressAbstract {
  key(AddressType.enterpriseKey),
  script(AddressType.enterpriseScript),
  ;

  @override
  final AddressType type;
  const AddressEnterprise(this.type);
}

/// Deprecated since Shelley era
enum AddressByron implements AddressAbstract {
  byron(AddressType.byron),
  ;

  @override
  final AddressType type;
  const AddressByron(this.type);
}

/// Deprecated since Conway era
enum AddressPointer implements AddressAbstract {
  key(AddressType.pointerKey),
  script(AddressType.pointerScript),
  ;

  @override
  final AddressType type;
  const AddressPointer(this.type);
}
