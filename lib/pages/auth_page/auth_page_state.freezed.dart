// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_page_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthPageState {
  AuthentificationStatus? get authentificationStatus =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String email,
            String password,
            bool isEmailValid,
            bool isPasswordValid,
            AuthentificationStatus? authentificationStatus)
        auth,
    required TResult Function(AuthentificationStatus? authentificationStatus)
        inProgress,
    required TResult Function(AuthentificationStatus authentificationStatus)
        finished,
    required TResult Function(AuthentificationStatus authentificationStatus)
        error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String email,
            String password,
            bool isEmailValid,
            bool isPasswordValid,
            AuthentificationStatus? authentificationStatus)?
        auth,
    TResult? Function(AuthentificationStatus? authentificationStatus)?
        inProgress,
    TResult? Function(AuthentificationStatus authentificationStatus)? finished,
    TResult? Function(AuthentificationStatus authentificationStatus)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String email,
            String password,
            bool isEmailValid,
            bool isPasswordValid,
            AuthentificationStatus? authentificationStatus)?
        auth,
    TResult Function(AuthentificationStatus? authentificationStatus)?
        inProgress,
    TResult Function(AuthentificationStatus authentificationStatus)? finished,
    TResult Function(AuthentificationStatus authentificationStatus)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthPageStateAuth value) auth,
    required TResult Function(_AuthPageStateInProgress value) inProgress,
    required TResult Function(_AuthPageStateFinished value) finished,
    required TResult Function(_AuthPageStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthPageStateAuth value)? auth,
    TResult? Function(_AuthPageStateInProgress value)? inProgress,
    TResult? Function(_AuthPageStateFinished value)? finished,
    TResult? Function(_AuthPageStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthPageStateAuth value)? auth,
    TResult Function(_AuthPageStateInProgress value)? inProgress,
    TResult Function(_AuthPageStateFinished value)? finished,
    TResult Function(_AuthPageStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthPageStateCopyWith<AuthPageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthPageStateCopyWith<$Res> {
  factory $AuthPageStateCopyWith(
          AuthPageState value, $Res Function(AuthPageState) then) =
      _$AuthPageStateCopyWithImpl<$Res, AuthPageState>;
  @useResult
  $Res call({AuthentificationStatus authentificationStatus});
}

/// @nodoc
class _$AuthPageStateCopyWithImpl<$Res, $Val extends AuthPageState>
    implements $AuthPageStateCopyWith<$Res> {
  _$AuthPageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? authentificationStatus = null,
  }) {
    return _then(_value.copyWith(
      authentificationStatus: null == authentificationStatus
          ? _value.authentificationStatus!
          : authentificationStatus // ignore: cast_nullable_to_non_nullable
              as AuthentificationStatus,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AuthPageStateAuthCopyWith<$Res>
    implements $AuthPageStateCopyWith<$Res> {
  factory _$$_AuthPageStateAuthCopyWith(_$_AuthPageStateAuth value,
          $Res Function(_$_AuthPageStateAuth) then) =
      __$$_AuthPageStateAuthCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String email,
      String password,
      bool isEmailValid,
      bool isPasswordValid,
      AuthentificationStatus? authentificationStatus});
}

/// @nodoc
class __$$_AuthPageStateAuthCopyWithImpl<$Res>
    extends _$AuthPageStateCopyWithImpl<$Res, _$_AuthPageStateAuth>
    implements _$$_AuthPageStateAuthCopyWith<$Res> {
  __$$_AuthPageStateAuthCopyWithImpl(
      _$_AuthPageStateAuth _value, $Res Function(_$_AuthPageStateAuth) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? isEmailValid = null,
    Object? isPasswordValid = null,
    Object? authentificationStatus = freezed,
  }) {
    return _then(_$_AuthPageStateAuth(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      isEmailValid: null == isEmailValid
          ? _value.isEmailValid
          : isEmailValid // ignore: cast_nullable_to_non_nullable
              as bool,
      isPasswordValid: null == isPasswordValid
          ? _value.isPasswordValid
          : isPasswordValid // ignore: cast_nullable_to_non_nullable
              as bool,
      authentificationStatus: freezed == authentificationStatus
          ? _value.authentificationStatus
          : authentificationStatus // ignore: cast_nullable_to_non_nullable
              as AuthentificationStatus?,
    ));
  }
}

/// @nodoc

class _$_AuthPageStateAuth implements _AuthPageStateAuth {
  _$_AuthPageStateAuth(
      {required this.email,
      required this.password,
      required this.isEmailValid,
      required this.isPasswordValid,
      this.authentificationStatus});

  @override
  final String email;
  @override
  final String password;
  @override
  final bool isEmailValid;
  @override
  final bool isPasswordValid;
  @override
  final AuthentificationStatus? authentificationStatus;

  @override
  String toString() {
    return 'AuthPageState.auth(email: $email, password: $password, isEmailValid: $isEmailValid, isPasswordValid: $isPasswordValid, authentificationStatus: $authentificationStatus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthPageStateAuth &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.isEmailValid, isEmailValid) ||
                other.isEmailValid == isEmailValid) &&
            (identical(other.isPasswordValid, isPasswordValid) ||
                other.isPasswordValid == isPasswordValid) &&
            (identical(other.authentificationStatus, authentificationStatus) ||
                other.authentificationStatus == authentificationStatus));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password, isEmailValid,
      isPasswordValid, authentificationStatus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthPageStateAuthCopyWith<_$_AuthPageStateAuth> get copyWith =>
      __$$_AuthPageStateAuthCopyWithImpl<_$_AuthPageStateAuth>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String email,
            String password,
            bool isEmailValid,
            bool isPasswordValid,
            AuthentificationStatus? authentificationStatus)
        auth,
    required TResult Function(AuthentificationStatus? authentificationStatus)
        inProgress,
    required TResult Function(AuthentificationStatus authentificationStatus)
        finished,
    required TResult Function(AuthentificationStatus authentificationStatus)
        error,
  }) {
    return auth(
        email, password, isEmailValid, isPasswordValid, authentificationStatus);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String email,
            String password,
            bool isEmailValid,
            bool isPasswordValid,
            AuthentificationStatus? authentificationStatus)?
        auth,
    TResult? Function(AuthentificationStatus? authentificationStatus)?
        inProgress,
    TResult? Function(AuthentificationStatus authentificationStatus)? finished,
    TResult? Function(AuthentificationStatus authentificationStatus)? error,
  }) {
    return auth?.call(
        email, password, isEmailValid, isPasswordValid, authentificationStatus);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String email,
            String password,
            bool isEmailValid,
            bool isPasswordValid,
            AuthentificationStatus? authentificationStatus)?
        auth,
    TResult Function(AuthentificationStatus? authentificationStatus)?
        inProgress,
    TResult Function(AuthentificationStatus authentificationStatus)? finished,
    TResult Function(AuthentificationStatus authentificationStatus)? error,
    required TResult orElse(),
  }) {
    if (auth != null) {
      return auth(email, password, isEmailValid, isPasswordValid,
          authentificationStatus);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthPageStateAuth value) auth,
    required TResult Function(_AuthPageStateInProgress value) inProgress,
    required TResult Function(_AuthPageStateFinished value) finished,
    required TResult Function(_AuthPageStateError value) error,
  }) {
    return auth(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthPageStateAuth value)? auth,
    TResult? Function(_AuthPageStateInProgress value)? inProgress,
    TResult? Function(_AuthPageStateFinished value)? finished,
    TResult? Function(_AuthPageStateError value)? error,
  }) {
    return auth?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthPageStateAuth value)? auth,
    TResult Function(_AuthPageStateInProgress value)? inProgress,
    TResult Function(_AuthPageStateFinished value)? finished,
    TResult Function(_AuthPageStateError value)? error,
    required TResult orElse(),
  }) {
    if (auth != null) {
      return auth(this);
    }
    return orElse();
  }
}

abstract class _AuthPageStateAuth implements AuthPageState {
  factory _AuthPageStateAuth(
          {required final String email,
          required final String password,
          required final bool isEmailValid,
          required final bool isPasswordValid,
          final AuthentificationStatus? authentificationStatus}) =
      _$_AuthPageStateAuth;

  String get email;
  String get password;
  bool get isEmailValid;
  bool get isPasswordValid;
  @override
  AuthentificationStatus? get authentificationStatus;
  @override
  @JsonKey(ignore: true)
  _$$_AuthPageStateAuthCopyWith<_$_AuthPageStateAuth> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AuthPageStateInProgressCopyWith<$Res>
    implements $AuthPageStateCopyWith<$Res> {
  factory _$$_AuthPageStateInProgressCopyWith(_$_AuthPageStateInProgress value,
          $Res Function(_$_AuthPageStateInProgress) then) =
      __$$_AuthPageStateInProgressCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AuthentificationStatus? authentificationStatus});
}

/// @nodoc
class __$$_AuthPageStateInProgressCopyWithImpl<$Res>
    extends _$AuthPageStateCopyWithImpl<$Res, _$_AuthPageStateInProgress>
    implements _$$_AuthPageStateInProgressCopyWith<$Res> {
  __$$_AuthPageStateInProgressCopyWithImpl(_$_AuthPageStateInProgress _value,
      $Res Function(_$_AuthPageStateInProgress) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? authentificationStatus = freezed,
  }) {
    return _then(_$_AuthPageStateInProgress(
      authentificationStatus: freezed == authentificationStatus
          ? _value.authentificationStatus
          : authentificationStatus // ignore: cast_nullable_to_non_nullable
              as AuthentificationStatus?,
    ));
  }
}

/// @nodoc

class _$_AuthPageStateInProgress implements _AuthPageStateInProgress {
  _$_AuthPageStateInProgress({this.authentificationStatus});

  @override
  final AuthentificationStatus? authentificationStatus;

  @override
  String toString() {
    return 'AuthPageState.inProgress(authentificationStatus: $authentificationStatus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthPageStateInProgress &&
            (identical(other.authentificationStatus, authentificationStatus) ||
                other.authentificationStatus == authentificationStatus));
  }

  @override
  int get hashCode => Object.hash(runtimeType, authentificationStatus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthPageStateInProgressCopyWith<_$_AuthPageStateInProgress>
      get copyWith =>
          __$$_AuthPageStateInProgressCopyWithImpl<_$_AuthPageStateInProgress>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String email,
            String password,
            bool isEmailValid,
            bool isPasswordValid,
            AuthentificationStatus? authentificationStatus)
        auth,
    required TResult Function(AuthentificationStatus? authentificationStatus)
        inProgress,
    required TResult Function(AuthentificationStatus authentificationStatus)
        finished,
    required TResult Function(AuthentificationStatus authentificationStatus)
        error,
  }) {
    return inProgress(authentificationStatus);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String email,
            String password,
            bool isEmailValid,
            bool isPasswordValid,
            AuthentificationStatus? authentificationStatus)?
        auth,
    TResult? Function(AuthentificationStatus? authentificationStatus)?
        inProgress,
    TResult? Function(AuthentificationStatus authentificationStatus)? finished,
    TResult? Function(AuthentificationStatus authentificationStatus)? error,
  }) {
    return inProgress?.call(authentificationStatus);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String email,
            String password,
            bool isEmailValid,
            bool isPasswordValid,
            AuthentificationStatus? authentificationStatus)?
        auth,
    TResult Function(AuthentificationStatus? authentificationStatus)?
        inProgress,
    TResult Function(AuthentificationStatus authentificationStatus)? finished,
    TResult Function(AuthentificationStatus authentificationStatus)? error,
    required TResult orElse(),
  }) {
    if (inProgress != null) {
      return inProgress(authentificationStatus);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthPageStateAuth value) auth,
    required TResult Function(_AuthPageStateInProgress value) inProgress,
    required TResult Function(_AuthPageStateFinished value) finished,
    required TResult Function(_AuthPageStateError value) error,
  }) {
    return inProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthPageStateAuth value)? auth,
    TResult? Function(_AuthPageStateInProgress value)? inProgress,
    TResult? Function(_AuthPageStateFinished value)? finished,
    TResult? Function(_AuthPageStateError value)? error,
  }) {
    return inProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthPageStateAuth value)? auth,
    TResult Function(_AuthPageStateInProgress value)? inProgress,
    TResult Function(_AuthPageStateFinished value)? finished,
    TResult Function(_AuthPageStateError value)? error,
    required TResult orElse(),
  }) {
    if (inProgress != null) {
      return inProgress(this);
    }
    return orElse();
  }
}

abstract class _AuthPageStateInProgress implements AuthPageState {
  factory _AuthPageStateInProgress(
          {final AuthentificationStatus? authentificationStatus}) =
      _$_AuthPageStateInProgress;

  @override
  AuthentificationStatus? get authentificationStatus;
  @override
  @JsonKey(ignore: true)
  _$$_AuthPageStateInProgressCopyWith<_$_AuthPageStateInProgress>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AuthPageStateFinishedCopyWith<$Res>
    implements $AuthPageStateCopyWith<$Res> {
  factory _$$_AuthPageStateFinishedCopyWith(_$_AuthPageStateFinished value,
          $Res Function(_$_AuthPageStateFinished) then) =
      __$$_AuthPageStateFinishedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AuthentificationStatus authentificationStatus});
}

/// @nodoc
class __$$_AuthPageStateFinishedCopyWithImpl<$Res>
    extends _$AuthPageStateCopyWithImpl<$Res, _$_AuthPageStateFinished>
    implements _$$_AuthPageStateFinishedCopyWith<$Res> {
  __$$_AuthPageStateFinishedCopyWithImpl(_$_AuthPageStateFinished _value,
      $Res Function(_$_AuthPageStateFinished) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? authentificationStatus = null,
  }) {
    return _then(_$_AuthPageStateFinished(
      authentificationStatus: null == authentificationStatus
          ? _value.authentificationStatus
          : authentificationStatus // ignore: cast_nullable_to_non_nullable
              as AuthentificationStatus,
    ));
  }
}

/// @nodoc

class _$_AuthPageStateFinished implements _AuthPageStateFinished {
  _$_AuthPageStateFinished({required this.authentificationStatus});

  @override
  final AuthentificationStatus authentificationStatus;

  @override
  String toString() {
    return 'AuthPageState.finished(authentificationStatus: $authentificationStatus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthPageStateFinished &&
            (identical(other.authentificationStatus, authentificationStatus) ||
                other.authentificationStatus == authentificationStatus));
  }

  @override
  int get hashCode => Object.hash(runtimeType, authentificationStatus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthPageStateFinishedCopyWith<_$_AuthPageStateFinished> get copyWith =>
      __$$_AuthPageStateFinishedCopyWithImpl<_$_AuthPageStateFinished>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String email,
            String password,
            bool isEmailValid,
            bool isPasswordValid,
            AuthentificationStatus? authentificationStatus)
        auth,
    required TResult Function(AuthentificationStatus? authentificationStatus)
        inProgress,
    required TResult Function(AuthentificationStatus authentificationStatus)
        finished,
    required TResult Function(AuthentificationStatus authentificationStatus)
        error,
  }) {
    return finished(authentificationStatus);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String email,
            String password,
            bool isEmailValid,
            bool isPasswordValid,
            AuthentificationStatus? authentificationStatus)?
        auth,
    TResult? Function(AuthentificationStatus? authentificationStatus)?
        inProgress,
    TResult? Function(AuthentificationStatus authentificationStatus)? finished,
    TResult? Function(AuthentificationStatus authentificationStatus)? error,
  }) {
    return finished?.call(authentificationStatus);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String email,
            String password,
            bool isEmailValid,
            bool isPasswordValid,
            AuthentificationStatus? authentificationStatus)?
        auth,
    TResult Function(AuthentificationStatus? authentificationStatus)?
        inProgress,
    TResult Function(AuthentificationStatus authentificationStatus)? finished,
    TResult Function(AuthentificationStatus authentificationStatus)? error,
    required TResult orElse(),
  }) {
    if (finished != null) {
      return finished(authentificationStatus);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthPageStateAuth value) auth,
    required TResult Function(_AuthPageStateInProgress value) inProgress,
    required TResult Function(_AuthPageStateFinished value) finished,
    required TResult Function(_AuthPageStateError value) error,
  }) {
    return finished(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthPageStateAuth value)? auth,
    TResult? Function(_AuthPageStateInProgress value)? inProgress,
    TResult? Function(_AuthPageStateFinished value)? finished,
    TResult? Function(_AuthPageStateError value)? error,
  }) {
    return finished?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthPageStateAuth value)? auth,
    TResult Function(_AuthPageStateInProgress value)? inProgress,
    TResult Function(_AuthPageStateFinished value)? finished,
    TResult Function(_AuthPageStateError value)? error,
    required TResult orElse(),
  }) {
    if (finished != null) {
      return finished(this);
    }
    return orElse();
  }
}

abstract class _AuthPageStateFinished implements AuthPageState {
  factory _AuthPageStateFinished(
          {required final AuthentificationStatus authentificationStatus}) =
      _$_AuthPageStateFinished;

  @override
  AuthentificationStatus get authentificationStatus;
  @override
  @JsonKey(ignore: true)
  _$$_AuthPageStateFinishedCopyWith<_$_AuthPageStateFinished> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AuthPageStateErrorCopyWith<$Res>
    implements $AuthPageStateCopyWith<$Res> {
  factory _$$_AuthPageStateErrorCopyWith(_$_AuthPageStateError value,
          $Res Function(_$_AuthPageStateError) then) =
      __$$_AuthPageStateErrorCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AuthentificationStatus authentificationStatus});
}

/// @nodoc
class __$$_AuthPageStateErrorCopyWithImpl<$Res>
    extends _$AuthPageStateCopyWithImpl<$Res, _$_AuthPageStateError>
    implements _$$_AuthPageStateErrorCopyWith<$Res> {
  __$$_AuthPageStateErrorCopyWithImpl(
      _$_AuthPageStateError _value, $Res Function(_$_AuthPageStateError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? authentificationStatus = null,
  }) {
    return _then(_$_AuthPageStateError(
      authentificationStatus: null == authentificationStatus
          ? _value.authentificationStatus
          : authentificationStatus // ignore: cast_nullable_to_non_nullable
              as AuthentificationStatus,
    ));
  }
}

/// @nodoc

class _$_AuthPageStateError implements _AuthPageStateError {
  _$_AuthPageStateError({required this.authentificationStatus});

  @override
  final AuthentificationStatus authentificationStatus;

  @override
  String toString() {
    return 'AuthPageState.error(authentificationStatus: $authentificationStatus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthPageStateError &&
            (identical(other.authentificationStatus, authentificationStatus) ||
                other.authentificationStatus == authentificationStatus));
  }

  @override
  int get hashCode => Object.hash(runtimeType, authentificationStatus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthPageStateErrorCopyWith<_$_AuthPageStateError> get copyWith =>
      __$$_AuthPageStateErrorCopyWithImpl<_$_AuthPageStateError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String email,
            String password,
            bool isEmailValid,
            bool isPasswordValid,
            AuthentificationStatus? authentificationStatus)
        auth,
    required TResult Function(AuthentificationStatus? authentificationStatus)
        inProgress,
    required TResult Function(AuthentificationStatus authentificationStatus)
        finished,
    required TResult Function(AuthentificationStatus authentificationStatus)
        error,
  }) {
    return error(authentificationStatus);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String email,
            String password,
            bool isEmailValid,
            bool isPasswordValid,
            AuthentificationStatus? authentificationStatus)?
        auth,
    TResult? Function(AuthentificationStatus? authentificationStatus)?
        inProgress,
    TResult? Function(AuthentificationStatus authentificationStatus)? finished,
    TResult? Function(AuthentificationStatus authentificationStatus)? error,
  }) {
    return error?.call(authentificationStatus);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String email,
            String password,
            bool isEmailValid,
            bool isPasswordValid,
            AuthentificationStatus? authentificationStatus)?
        auth,
    TResult Function(AuthentificationStatus? authentificationStatus)?
        inProgress,
    TResult Function(AuthentificationStatus authentificationStatus)? finished,
    TResult Function(AuthentificationStatus authentificationStatus)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(authentificationStatus);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthPageStateAuth value) auth,
    required TResult Function(_AuthPageStateInProgress value) inProgress,
    required TResult Function(_AuthPageStateFinished value) finished,
    required TResult Function(_AuthPageStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthPageStateAuth value)? auth,
    TResult? Function(_AuthPageStateInProgress value)? inProgress,
    TResult? Function(_AuthPageStateFinished value)? finished,
    TResult? Function(_AuthPageStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthPageStateAuth value)? auth,
    TResult Function(_AuthPageStateInProgress value)? inProgress,
    TResult Function(_AuthPageStateFinished value)? finished,
    TResult Function(_AuthPageStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _AuthPageStateError implements AuthPageState {
  factory _AuthPageStateError(
          {required final AuthentificationStatus authentificationStatus}) =
      _$_AuthPageStateError;

  @override
  AuthentificationStatus get authentificationStatus;
  @override
  @JsonKey(ignore: true)
  _$$_AuthPageStateErrorCopyWith<_$_AuthPageStateError> get copyWith =>
      throw _privateConstructorUsedError;
}
