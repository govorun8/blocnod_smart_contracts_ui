// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:blocnod_smart_contracts_ui/generated/l10n.dart' as _i5;
import 'package:blocnod_smart_contracts_ui/utilities/controllers/authentification_controller.dart'
    as _i3;
import 'package:blocnod_smart_contracts_ui/utilities/injection_conf/injection_module.dart'
    as _i6;
import 'package:blocnod_smart_contracts_ui/utilities/repositories/authentification_repository.dart'
    as _i4;
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
    gh.singleton<_i3.AuthentificationController>(
        _i3.AuthentificationController());
    gh.singleton<_i4.AuthentificationRepository>(
        _i4.AuthentificationRepository());
    gh.singleton<_i5.S>(serviceModule.s);
    return this;
  }
}

class _$ServiceModule extends _i6.ServiceModule {}
