import 'package:blocnod_smart_contracts_ui/utilities/injection_conf/injection.dart';
import 'package:blocnod_smart_contracts_ui/utilities/models/enums.dart';
import 'package:blocnod_smart_contracts_ui/utilities/models/smart_contract/smart_contract_model.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@singleton
class ContractsRepository {
  late final Dio _dio;

  void init() {
    _dio = getIt<Dio>();
  }

  Future<List<SmartContract>?> getAllRemoteContacts() async {
    try {
      final response = await _dio.get('/contracts');

      return response.data['rows']
          .map<SmartContract>(
              (smartContract) => SmartContract.fromJson(smartContract))
          .toList();
    } on DioException catch (e, stackTrace) {
      throw ResponseStatus.failed;
    }
  }
}
