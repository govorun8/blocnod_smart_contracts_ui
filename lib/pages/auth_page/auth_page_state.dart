import 'package:blocnod_smart_contracts_ui/utilities/models/enums.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_page_state.freezed.dart';

@freezed
class AuthPageState with _$AuthPageState {
  factory AuthPageState.loading() = _AuthPageStateLoading;
  factory AuthPageState.inited({
    String? id,
    String? name,
    String? email,
    String? balance,
  }) = _AuthPageStateInited;

  factory AuthPageState.finished({
    required ResponseStatus status,
  }) = _AuthPageStateFinished;

  factory AuthPageState.error() = _AuthPageStateError;
}
