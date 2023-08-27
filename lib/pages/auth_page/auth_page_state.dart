import 'package:blocnod_smart_contracts_ui/utilities/models/enums.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_page_state.freezed.dart';

@freezed
class AuthPageState with _$AuthPageState {
  factory AuthPageState.auth({
    required String email,
    required String password,
    required bool isEmailValid,
    required bool isPasswordValid,
    AuthentificationStatus? authentificationStatus,
  }) = _AuthPageStateAuth;

  factory AuthPageState.inProgress({
    AuthentificationStatus? authentificationStatus,
  }) = _AuthPageStateInProgress;

  factory AuthPageState.finished({
    required AuthentificationStatus authentificationStatus,
  }) = _AuthPageStateFinished;

  factory AuthPageState.error({
    required AuthentificationStatus authentificationStatus,
  }) = _AuthPageStateError;
}
