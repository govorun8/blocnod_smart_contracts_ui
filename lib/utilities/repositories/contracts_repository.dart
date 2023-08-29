import 'package:blocnod_smart_contracts_ui/utilities/injection_conf/injection.dart';
import 'package:blocnod_smart_contracts_ui/utilities/models/enums.dart';
import 'package:blocnod_smart_contracts_ui/utilities/models/smart_contract/smart_contract_model.dart';
import 'package:blocnod_smart_contracts_ui/utilities/models/smart_contract_from_back/smart_contract_from_back.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@singleton
class ContractsRepository {
  late final Dio _dio;

  void init() {
    _dio = getIt<Dio>();
  }

  Future<List<SmartContractFromBack>?> getAllRemoteContacts(
      String userId) async {
    try {
      final response = await _dio.get('/user/$userId/contracts');

      return response.data
          .map<SmartContractFromBack>(
              (smartContract) => SmartContractFromBack.fromJson(smartContract))
          .toList();
    } on DioException catch (e) {
      if (e.response?.statusCode != 200) {
        throw ResponseStatus.failed;
      }
    }
    return null;
  }

  Future<void> createNewSmartContract(SmartContract smartContract) async {
    try {
      final data = smartContract.toJson();
      await _dio.post(
        '/smart-contract',
        data: data,
      );
    } on DioException catch (e) {
      if (e.response?.statusCode != 200) {
        throw ResponseStatus.failed;
      }
    }
  }
}
