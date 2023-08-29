// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:blocnod_smart_contracts_ui/generated/l10n.dart' as _i9;
import 'package:blocnod_smart_contracts_ui/utilities/controllers/contracts_controller.dart'
    as _i4;
import 'package:blocnod_smart_contracts_ui/utilities/controllers/pre_filed_fields_controller.dart'
    as _i8;
import 'package:blocnod_smart_contracts_ui/utilities/controllers/user_controller.dart'
    as _i10;
import 'package:blocnod_smart_contracts_ui/utilities/helpers/locale_changer.dart'
    as _i7;
import 'package:blocnod_smart_contracts_ui/utilities/injection_conf/injection_module.dart'
    as _i12;
import 'package:blocnod_smart_contracts_ui/utilities/repositories/authentification_repository.dart'
    as _i3;
import 'package:blocnod_smart_contracts_ui/utilities/repositories/contracts_repository.dart'
    as _i5;
import 'package:blocnod_smart_contracts_ui/utilities/repositories/user_repository.dart'
    as _i11;
import 'package:dio/dio.dart' as _i6;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final serviceModule = _$ServiceModule();
    gh.singleton<_i3.AuthentificationRepository>(
        _i3.AuthentificationRepository());
    gh.singleton<_i4.ContractsController>(_i4.ContractsController());
    gh.singleton<_i5.ContractsRepository>(_i5.ContractsRepository());
    gh.lazySingleton<_i6.Dio>(() => serviceModule.dio);
    gh.singleton<_i7.LocaleChanger>(_i7.LocaleChanger());
    gh.singleton<_i8.PreSelectedFieldsController>(
        _i8.PreSelectedFieldsController());
    gh.singleton<_i9.S>(serviceModule.s);
    gh.singleton<_i10.UserController>(_i10.UserController());
    gh.singleton<_i11.UserRepository>(_i11.UserRepository());
    return this;
  }
}

class _$ServiceModule extends _i12.ServiceModule {}
