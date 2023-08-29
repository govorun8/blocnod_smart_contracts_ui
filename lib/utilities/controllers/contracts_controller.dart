import 'package:blocnod_smart_contracts_ui/utilities/injection_conf/injection.dart';
import 'package:blocnod_smart_contracts_ui/utilities/models/smart_contract/smart_contract_model.dart';
import 'package:blocnod_smart_contracts_ui/utilities/repositories/contracts_repository.dart';
import 'package:injectable/injectable.dart';

@singleton
class ContractsController {
  late final ContractsRepository contractsRepository;

  void init() {
    contractsRepository = getIt<ContractsRepository>();
  }

  Future<List<SmartContract>?> getUserSmartContracts(String userId) async {
    final result = await contractsRepository.getAllRemoteContacts(userId);
    return result;
  }
}
