import 'package:blocnod_smart_contracts_ui/constants.dart';
import 'package:blocnod_smart_contracts_ui/generated/l10n.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@module
abstract class ServiceModule {
  @singleton
  S get s => S();

  @lazySingleton
  Dio get dio => Dio(
        BaseOptions(
          baseUrl: kLocalHost,
        ),
      );
}
