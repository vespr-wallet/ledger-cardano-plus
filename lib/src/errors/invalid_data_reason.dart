enum InvalidDataReason {
  getExtPubKeyPathsNotArray(message: 'getExtPubKeyPaths not an array'),
  invalidPath(message: 'invalid path'),
  networkInvalidProtocolMagic(message: 'network invalid protocol magic'),
  networkInvalidNetworkId(message: 'network invalid network id'),
  networkIdIncludeInvalid(message: 'network id include invalid'),
  inputsNotArray(message: 'inputs not an array'),
  inputInvalidTxHash(message: 'input invalid tx hash'),
  inputInvalidPath(message: 'input invalid path'),
  inputInvalidUtxoIndex(message: 'input invalid utxo index'),
  outputsNotArray(message: 'outputs not an array'),
  outputInvalidFormat(message: 'output invalid format'),
  outputInvalidAmount(message: 'output invalid amount'),
  outputInvalidAddress(message: 'output invalid address'),
  outputInvalidAddressParams(message: 'output invalid address params'),
  outputInvalidDatumHash(message: 'output invalid datum hash'),
  outputInvalidInlineDatum(message: 'output invalid inline datum'),
  outputInvalidReferenceScriptHex(
      message: 'output invalid reference script hex'),
  outputInconsistentDatum(message: 'output inconsistent datum'),
  outputInconsistentReferenceScript(
      message: 'output inconsistent reference script'),
  multiassetInvalidPolicyName(message: 'multiasset invalid policy name'),
  multiassetInvalidTokenBundleNotArray(
      message: 'multiasset invalid token bundle not array'),
  multiassetInvalidTokenBundleTooLarge(
      message: 'multiasset invalid token bundle too large'),
  multiassetInvalidTokenBundleOrdering(
      message: 'multiasset invalid token bundle ordering'),
  multiassetInvalidTokenBundleNotUnique(
      message: 'multiasset invalid token bundle not unique'),
  multiassetInvalidTokenBundleEmpty(
      message: 'multiasset invalid token bundle empty'),
  multiassetInvalidTokenAmount(message: 'multiasset invalid token amount'),
  multiassetInvalidAssetName(message: 'multiasset invalid asset name'),
  multiassetInvalidAssetGroupNotArray(
      message: 'multiasset invalid asset group not array'),
  multiassetInvalidAssetGroupTooLarge(
      message: 'multiasset invalid asset group too large'),
  multiassetInvalidAssetGroupEmpty(
      message: 'multiasset invalid asset group empty'),
  multiassetInvalidAssetGroupOrdering(
      message: 'multiasset invalid asset group ordering'),
  multiassetInvalidAssetGroupNotUnique(
      message: 'multiasset invalid asset group not unique'),
  addressUnknownType(message: 'address unknown type'),
  addressInvalidSpendingInfo(message: 'address invalid spending info'),
  addressInvalidSpendingKeyPath(message: 'address invalid spending key path'),
  addressInvalidSpendingScriptHash(
      message: 'address invalid spending script hash'),
  addressInvalidBlockchainPointer(
      message: 'address invalid blockchain pointer'),
  addressInvalidStakingKeyPath(message: 'address invalid staking key path'),
  addressInvalidStakingKeyHash(message: 'address invalid staking key hash'),
  addressInvalidStakingScriptHash(
      message: 'address invalid staking script hash'),
  addressInvalidStakingInfo(message: 'address invalid staking info'),
  addressInvalidRewardAddress(message: 'address invalid reward address'),
  feeInvalid(message: 'fee invalid'),
  ttlInvalid(message: 'ttl invalid'),
  certificatesNotArray(message: 'certificates not an array'),
  certificateInvalidType(message: 'certificate invalid type'),
  certificateInvalidPath(message: 'certificate invalid path'),
  certificateInvalidStakeCredential(
      message: 'certificate invalid stake credential'),
  certificateInvalidCommitteeCredential(
      message: 'certificate invalid committee credential'),
  certificateInvalidDrepCredential(
      message: 'certificate invalid drep credential'),
  certificateInvalidPoolKeyHash(message: 'certificate invalid pool key hash'),
  certificateSuperfluousPoolKeyHash(
      message: 'certificate superfluous pool key hash'),
  certificateInvalidDeposit(message: 'certificate invalid deposit'),
  certificateInvalidDrep(message: 'certificate invalid drep'),
  anchorInvalidUrl(message: 'anchor invalid url'),
  anchorInvalidHash(message: 'anchor invalid hash'),
  poolRegistrationInvalidVrfKeyHash(
      message: 'pool registration invalid vrf key hash'),
  poolRegistrationInvalidPledge(message: 'pool registration invalid pledge'),
  poolRegistrationInvalidCost(message: 'pool registration invalid cost'),
  poolRegistrationInvalidMargin(message: 'pool registration invalid margin'),
  poolRegistrationInvalidMarginDenominator(
      message: 'pool registration invalid margin denominator'),
  poolRegistrationOwnersTooMany(message: 'pool registration owners too many'),
  poolKeyInvalidType(message: 'pool key invalid type'),
  poolKeyInvalidPath(message: 'pool key invalid path'),
  poolKeyInvalidKeyHash(message: 'pool key invalid key hash'),
  poolOwnerInvalidType(message: 'pool owner invalid type'),
  poolOwnerInvalidPath(message: 'pool owner invalid path'),
  poolOwnerInvalidKeyHash(message: 'pool owner invalid key hash'),
  poolRegistrationRelaysTooMany(message: 'pool registration relays too many'),
  poolRewardAccountInvalidType(message: 'pool reward account invalid type'),
  poolRewardAccountInvalidPath(message: 'pool reward account invalid path'),
  poolRewardAccountInvalidHex(message: 'pool reward account invalid hex'),
  poolRetirementInvalidRetirementEpoch(
      message: 'pool retirement invalid retirement epoch'),
  relayInvalidType(message: 'relay invalid type'),
  relayInvalidPort(message: 'relay invalid port'),
  relayInvalidIpv4(message: 'relay invalid ipv4'),
  relayInvalidIpv6(message: 'relay invalid ipv6'),
  relayInvalidDns(message: 'relay invalid dns'),
  poolRegistrationMetadataInvalidUrl(
      message: 'pool registration metadata invalid url'),
  poolRegistrationMetadataInvalidHash(
      message: 'pool registration metadata invalid hash'),
  withdrawalsNotArray(message: 'withdrawals not an array'),
  withdrawalInvalidAmount(message: 'withdrawal invalid amount'),
  withdrawalInvalidPath(message: 'withdrawal invalid path'),
  withdrawalInvalidStakeCredential(
      message: 'withdrawal invalid stake credential'),
  auxiliaryDataUnknownType(message: 'auxiliary data unknown type'),
  auxiliaryDataInvalidHash(message: 'auxiliary data invalid hash'),
  metadataUnknownType(message: 'metadata unknown type'),
  cvoteRegistrationInconsistentWithCip15(
      message: 'cvote registration inconsistent with cip15'),
  cvoteRegistrationInconsistentWithCip36(
      message: 'cvote registration inconsistent with cip36'),
  cvoteRegistrationBothKeyAndPath(
      message: 'cvote registration both key and path'),
  cvoteRegistrationMissingVoteKey(
      message: 'cvote registration missing vote key'),
  cvoteRegistrationInvalidVoteKey(
      message: 'cvote registration invalid vote key'),
  cvoteRegistrationInvalidVoteKeyPath(
      message: 'cvote registration invalid vote key path'),
  cvoteRegistrationInvalidStakingKeyPath(
      message: 'cvote registration invalid staking key path'),
  cvoteRegistrationInvalidNonce(message: 'cvote registration invalid nonce'),
  cvoteRegistrationInvalidVotingPurpose(
      message: 'cvote registration invalid voting purpose'),
  cvoteRegistrationDelegationsNotArray(
      message: 'cvote registration delegations not an array'),
  cvoteDelegationUnknownFormat(message: 'cvote delegation unknown format'),
  cvoteDelegationUnknownDelegationType(
      message: 'cvote delegation unknown delegation type'),
  cvoteDelegationInvalidWeight(message: 'cvote delegation invalid weight'),
  cvoteDelegationInvalidPath(message: 'cvote delegation invalid path'),
  cvoteDelegationInvalidKey(message: 'cvote delegation invalid key'),
  validityIntervalStartInvalid(message: 'validity interval start invalid'),
  scriptDataHashWrongLength(message: 'script data hash wrong length'),
  collateralInputsNotArray(message: 'collateral inputs not an array'),
  requiredSignersNotArray(message: 'required signers not an array'),
  vkeyHashWrongLength(message: 'vkey hash wrong length'),
  unknownRequiredSignerType(message: 'unknown required signer type'),
  requiredSignerInvalidPath(message: 'required signer invalid path'),
  collateralInputContainsDatum(message: 'collateral input contains datum'),
  collateralInputContainsReferenceScript(
      message: 'collateral input contains reference script'),
  totalCollateralNotValid(message: 'total collateral not valid'),
  referenceInputsNotArray(message: 'reference inputs not an array'),
  votingProceduresNotArray(message: 'voting procedures not an array'),
  voterVotesNotArray(message: 'voter votes not an array'),
  voterInvalid(message: 'voter invalid'),
  govActionIdInvalidTxHash(message: 'gov action id invalid tx hash'),
  govActionIdInvalidIndex(message: 'gov action id invalid index'),
  votingProceduresInvalidNumberOfVoters(
      message: 'voting procedures invalid number of voters'),
  votingProceduresInvalidNumberOfVotes(
      message: 'voting procedures invalid number of votes'),
  treasuryNotValid(message: 'treasury not valid'),
  donationNotValid(message: 'donation not valid'),
  signModeUnknown(message: 'sign mode unknown'),
  signModeOrdinaryPoolRegistrationNotAllowed(
      message: 'sign mode ordinary pool registration not allowed'),
  signModeOrdinaryCertificateStakeCredentialOnlyAsPath(
      message: 'sign mode ordinary certificate stake credential only as path'),
  signModeOrdinaryCertificateCommitteeColdCredentialOnlyAsPath(
      message:
          'sign mode ordinary certificate committee cold credential only as path'),
  signModeOrdinaryCertificateDrepCredentialOnlyAsPath(
      message: 'sign mode ordinary certificate drep credential only as path'),
  signModeOrdinaryWithdrawalOnlyAsPath(
      message: 'sign mode ordinary withdrawal only as path'),
  signModeOrdinaryCollateralInputsNotAllowed(
      message: 'sign mode ordinary collateral inputs not allowed'),
  signModeOrdinaryCollateralOutputNotAllowed(
      message: 'sign mode ordinary collateral output not allowed'),
  signModeOrdinaryTotalCollateralNotAllowed(
      message: 'sign mode ordinary total collateral not allowed'),
  signModeOrdinaryReferenceInputsNotAllowed(
      message: 'sign mode ordinary reference inputs not allowed'),
  signModeOrdinaryVoterOnlyAsPath(
      message: 'sign mode ordinary voter only as path'),
  signModeMultisigPoolRegistrationNotAllowed(
      message: 'sign mode multisig pool registration not allowed'),
  signModeMultisigPoolRetirementNotAllowed(
      message: 'sign mode multisig pool retirement not allowed'),
  signModeMultisigDeviceOwnedAddressNotAllowed(
      message: 'sign mode multisig device owned address not allowed'),
  signModeMultisigCertificateCredentialOnlyAsScript(
      message: 'sign mode multisig certificate credential only as script'),
  signModeMultisigWithdrawalOnlyAsScript(
      message: 'sign mode multisig withdrawal only as script'),
  signModeMultisigCollateralInputsNotAllowed(
      message: 'sign mode multisig collateral inputs not allowed'),
  signModeMultisigCollateralOutputNotAllowed(
      message: 'sign mode multisig collateral output not allowed'),
  signModeMultisigTotalCollateralNotAllowed(
      message: 'sign mode multisig total collateral not allowed'),
  signModeMultisigReferenceInputsNotAllowed(
      message: 'sign mode multisig reference inputs not allowed'),
  signModeMultisigVoterOnlyAsScript(
      message: 'sign mode multisig voter only as script'),
  signModePoolOwnerInputWithPathNotAllowed(
      message: 'sign mode pool owner input with path not allowed'),
  signModePoolOwnerDeviceOwnedAddressNotAllowed(
      message: 'sign mode pool owner device owned address not allowed'),
  signModePoolOwnerDatumNotAllowed(
      message: 'sign mode pool owner datum not allowed'),
  signModePoolOwnerReferenceScriptNotAllowed(
      message: 'sign mode pool owner reference script not allowed'),
  signModePoolOwnerSinglePoolRegCertificateRequired(
      message: 'sign mode pool owner single pool reg certificate required'),
  signModePoolOwnerThirdPartyPoolKeyRequired(
      message: 'sign mode pool owner third party pool key required'),
  signModePoolOwnerSingleDeviceOwnerRequired(
      message: 'sign mode pool owner single device owner required'),
  signModePoolOwnerWithdrawalsNotAllowed(
      message: 'sign mode pool owner withdrawals not allowed'),
  signModePoolOwnerMintNotAllowed(
      message: 'sign mode pool owner mint not allowed'),
  signModePoolOwnerScriptDataHashNotAllowed(
      message: 'sign mode pool owner script data hash not allowed'),
  signModePoolOwnerCollateralInputsNotAllowed(
      message: 'sign mode pool owner collateral inputs not allowed'),
  signModePoolOwnerCollateralOutputNotAllowed(
      message: 'sign mode pool owner collateral output not allowed'),
  signModePoolOwnerTotalCollateralNotAllowed(
      message: 'sign mode pool owner total collateral not allowed'),
  signModePoolOwnerRequiredSignersNotAllowed(
      message: 'sign mode pool owner required signers not allowed'),
  signModePoolOwnerReferenceInputsNotAllowed(
      message: 'sign mode pool owner reference inputs not allowed'),
  signModePoolOwnerVotingProceduresNotAllowed(
      message: 'sign mode pool owner voting procedures not allowed'),
  signModePoolOwnerTreasuryNotAllowed(
      message: 'sign mode pool owner treasury not allowed'),
  signModePoolOwnerDonationNotAllowed(
      message: 'sign mode pool owner donation not allowed'),
  signModePoolOperatorDatumNotAllowed(
      message: 'sign mode pool operator datum not allowed'),
  signModePoolOperatorReferenceScriptNotAllowed(
      message: 'sign mode pool operator reference script not allowed'),
  signModePoolOperatorSinglePoolRegCertificateRequired(
      message: 'sign mode pool operator single pool reg certificate required'),
  signModePoolOperatorDeviceOwnedPoolKeyRequired(
      message: 'sign mode pool operator device owned pool key required'),
  signModePoolOperatorDeviceOwnedPoolOwnerNotAllowed(
      message: 'sign mode pool operator device owned pool owner not allowed'),
  signModePoolOperatorWithdrawalsNotAllowed(
      message: 'sign mode pool operator withdrawals not allowed'),
  signModePoolOperatorMintNotAllowed(
      message: 'sign mode pool operator mint not allowed'),
  signModePoolOperatorScriptDataHashNotAllowed(
      message: 'sign mode pool operator script data hash not allowed'),
  signModePoolOperatorCollateralInputsNotAllowed(
      message: 'sign mode pool operator collateral inputs not allowed'),
  signModePoolOperatorCollateralOutputNotAllowed(
      message: 'sign mode pool operator collateral output not allowed'),
  signModePoolOperatorTotalCollateralNotAllowed(
      message: 'sign mode pool operator total collateral not allowed'),
  signModePoolOperatorRequiredSignersNotAllowed(
      message: 'sign mode pool operator required signers not allowed'),
  signModePoolOperatorReferenceInputsNotAllowed(
      message: 'sign mode pool operator reference inputs not allowed'),
  signModePoolOperatorVotingProceduresNotAllowed(
      message: 'sign mode pool operator voting procedures not allowed'),
  signModePoolOperatorTreasuryNotAllowed(
      message: 'sign mode pool operator treasury not allowed'),
  signModePoolOperatorDonationNotAllowed(
      message: 'sign mode pool operator donation not allowed'),
  signModePlutusDeviceOwnedAddressNotAllowed(
      message: 'sign mode plutus device owned address not allowed'),
  signModePlutusPoolRegistrationNotAllowed(
      message: 'sign mode plutus pool registration not allowed'),
  additionalWitnessesNotArray(message: 'additional witnesses not an array'),
  operationalCertificateInvalidKesKey(
      message: 'operational certificate invalid kes key'),
  operationalCertificateInvalidKesPeriod(
      message: 'operational certificate invalid kes period'),
  operationalCertificateInvalidIssueCounter(
      message: 'operational certificate invalid issue counter'),
  operationalCertificateInvalidColdKeyPath(
      message: 'operational certificate invalid cold key path'),
  cvoteInvalidVotecastData(message: 'cvote invalid votecast data'),
  cvoteInvalidWitness(message: 'cvote invalid witness'),
  deriveNativeScriptHashInvalidData(
      message: 'derive native script hash invalid data'),
  deriveNativeScriptHashInvalidKeyPath(
      message: 'derive native script hash invalid key path'),
  deriveNativeScriptHashInvalidKeyHash(
      message: 'derive native script hash invalid key hash'),
  deriveNativeScriptHashScriptsNotAnArray(
      message: 'derive native script hash scripts not an array'),
  deriveNativeScriptHashInvalidRequiredCount(
      message: 'derive native script hash invalid required count'),
  deriveNativeScriptHashInvalidTokenLockingSlot(
      message: 'derive native script hash invalid token locking slot'),
  deriveNativeScriptHashRequiredCountHigherThanNumberOfScripts(
      message:
          'derive native script hash required count higher than number of scripts'),
  deriveNativeScriptHashUnknownType(
      message: 'derive native script hash unknown type'),
  deriveNativeScriptHashInvalidDisplayFormat(
      message: 'derive native script hash invalid display format'),
  ledgerPolicy(message: 'ledger policy'),
  invalidDataSuppliedToLedger(message: 'invalid data supplied to ledger'),
  invalidB2Hash(message: 'invalid b2 hash');

  final String message;
  const InvalidDataReason({required this.message});
}
