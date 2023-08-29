import 'package:blocnod_smart_contracts_ui/utilities/injection_conf/injection.dart';
import 'package:blocnod_smart_contracts_ui/utilities/models/enums.dart';
import 'package:blocnod_smart_contracts_ui/utilities/models/smart_contract/smart_contract_model.dart';
import 'package:blocnod_smart_contracts_ui/utilities/models/smart_contract_from_back/smart_contract_from_back.dart';
import 'package:blocnod_smart_contracts_ui/utilities/repositories/contracts_repository.dart';
import 'package:injectable/injectable.dart';

@singleton
class ContractsController {
  late final ContractsRepository contractsRepository;

  void init() {
    contractsRepository = getIt<ContractsRepository>();
  }

  Future<List<SmartContractFromBack>?> getUserSmartContracts(
      String userId) async {
    final result = await contractsRepository.getAllRemoteContacts(userId);
    return result;
  }

  Future<List<SmartContractFromBack>?> getUserSmartContractsToAgree(
      String userId) async {
    final result = await contractsRepository.getContractsToAgree(userId);
    return result;
  }

  Future<ResponseStatus> createNewSmartContract(
    SmartContractType type,
    String creatorId,
    String executorId,
    double value,
    String arbitration,
    Map<String, dynamic> additionalStatements,
  ) async {
    final smartContract = SmartContract(
        type: type,
        creatorId: creatorId,
        executorId: executorId,
        value: value,
        arbitration: arbitration,
        additionalStatements: additionalStatements);

    final result =
        await contractsRepository.createNewSmartContract(smartContract);
    return result;
  }

  Future<ResponseStatus> confirmContract(
    String contractId,
    String userId,
  ) async {
    final result =
        await contractsRepository.confirmContract(contractId, userId);
    return result;
  }

  Future<ResponseStatus> rejectContract(
    String contractId,
    String userId,
  ) async {
    final result = await contractsRepository.rejectContract(contractId, userId);
    return result;
  }
}
