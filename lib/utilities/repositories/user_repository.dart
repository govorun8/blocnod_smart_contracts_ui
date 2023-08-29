import 'dart:developer';

import 'package:blocnod_smart_contracts_ui/utilities/injection_conf/injection.dart';
import 'package:blocnod_smart_contracts_ui/utilities/models/enums.dart';
import 'package:blocnod_smart_contracts_ui/utilities/models/user/user_model.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@singleton
class UserRepository {
  late final Dio _dio;

  void init() {
    _dio = getIt<Dio>();
  }

  Future<ResponseStatus> createNewUser(
    String id,
    String name,
    String email,
    double balance,
  ) async {
    try {
      final response = await _dio.post('/user',
          data: User(
            id: id,
            name: name,
            balance: balance,
            email: email,
          ).toJson());
      if (response.statusCode == 200) {
        return ResponseStatus.done;
      } else {
        return ResponseStatus.failed;
      }
    } on DioException catch (e) {
      log(e.message ?? 'createNewUser');
      return ResponseStatus.failed;
    }
  }
}
