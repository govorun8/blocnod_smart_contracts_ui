// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'smart_contract_creation_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SmartContractCreationState {
  ResponseStatus? get responseStatus => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ResponseStatus? responseStatus) editind,
    required TResult Function(ResponseStatus? responseStatus) inProgress,
    required TResult Function(ResponseStatus responseStatus) finished,
    required TResult Function(ResponseStatus responseStatus) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ResponseStatus? responseStatus)? editind,
    TResult? Function(ResponseStatus? responseStatus)? inProgress,
    TResult? Function(ResponseStatus responseStatus)? finished,
    TResult? Function(ResponseStatus responseStatus)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ResponseStatus? responseStatus)? editind,
    TResult Function(ResponseStatus? responseStatus)? inProgress,
    TResult Function(ResponseStatus responseStatus)? finished,
    TResult Function(ResponseStatus responseStatus)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SmartContractCreationStateEditing value) editind,
    required TResult Function(_SmartContractCreationStateInProgress value)
        inProgress,
    required TResult Function(_SmartContractCreationStateFinished value)
        finished,
    required TResult Function(_SmartContractCreationStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SmartContractCreationStateEditing value)? editind,
    TResult? Function(_SmartContractCreationStateInProgress value)? inProgress,
    TResult? Function(_SmartContractCreationStateFinished value)? finished,
    TResult? Function(_SmartContractCreationStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SmartContractCreationStateEditing value)? editind,
    TResult Function(_SmartContractCreationStateInProgress value)? inProgress,
    TResult Function(_SmartContractCreationStateFinished value)? finished,
    TResult Function(_SmartContractCreationStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SmartContractCreationStateCopyWith<SmartContractCreationState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SmartContractCreationStateCopyWith<$Res> {
  factory $SmartContractCreationStateCopyWith(SmartContractCreationState value,
          $Res Function(SmartContractCreationState) then) =
      _$SmartContractCreationStateCopyWithImpl<$Res,
          SmartContractCreationState>;
  @useResult
  $Res call({ResponseStatus responseStatus});
}

/// @nodoc
class _$SmartContractCreationStateCopyWithImpl<$Res,
        $Val extends SmartContractCreationState>
    implements $SmartContractCreationStateCopyWith<$Res> {
  _$SmartContractCreationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? responseStatus = null,
  }) {
    return _then(_value.copyWith(
      responseStatus: null == responseStatus
          ? _value.responseStatus!
          : responseStatus // ignore: cast_nullable_to_non_nullable
              as ResponseStatus,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SmartContractCreationStateEditingCopyWith<$Res>
    implements $SmartContractCreationStateCopyWith<$Res> {
  factory _$$_SmartContractCreationStateEditingCopyWith(
          _$_SmartContractCreationStateEditing value,
          $Res Function(_$_SmartContractCreationStateEditing) then) =
      __$$_SmartContractCreationStateEditingCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ResponseStatus? responseStatus});
}

/// @nodoc
class __$$_SmartContractCreationStateEditingCopyWithImpl<$Res>
    extends _$SmartContractCreationStateCopyWithImpl<$Res,
        _$_SmartContractCreationStateEditing>
    implements _$$_SmartContractCreationStateEditingCopyWith<$Res> {
  __$$_SmartContractCreationStateEditingCopyWithImpl(
      _$_SmartContractCreationStateEditing _value,
      $Res Function(_$_SmartContractCreationStateEditing) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? responseStatus = freezed,
  }) {
    return _then(_$_SmartContractCreationStateEditing(
      responseStatus: freezed == responseStatus
          ? _value.responseStatus
          : responseStatus // ignore: cast_nullable_to_non_nullable
              as ResponseStatus?,
    ));
  }
}

/// @nodoc

class _$_SmartContractCreationStateEditing
    implements _SmartContractCreationStateEditing {
  _$_SmartContractCreationStateEditing({this.responseStatus});

  @override
  final ResponseStatus? responseStatus;

  @override
  String toString() {
    return 'SmartContractCreationState.editind(responseStatus: $responseStatus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SmartContractCreationStateEditing &&
            (identical(other.responseStatus, responseStatus) ||
                other.responseStatus == responseStatus));
  }

  @override
  int get hashCode => Object.hash(runtimeType, responseStatus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SmartContractCreationStateEditingCopyWith<
          _$_SmartContractCreationStateEditing>
      get copyWith => __$$_SmartContractCreationStateEditingCopyWithImpl<
          _$_SmartContractCreationStateEditing>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ResponseStatus? responseStatus) editind,
    required TResult Function(ResponseStatus? responseStatus) inProgress,
    required TResult Function(ResponseStatus responseStatus) finished,
    required TResult Function(ResponseStatus responseStatus) error,
  }) {
    return editind(responseStatus);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ResponseStatus? responseStatus)? editind,
    TResult? Function(ResponseStatus? responseStatus)? inProgress,
    TResult? Function(ResponseStatus responseStatus)? finished,
    TResult? Function(ResponseStatus responseStatus)? error,
  }) {
    return editind?.call(responseStatus);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ResponseStatus? responseStatus)? editind,
    TResult Function(ResponseStatus? responseStatus)? inProgress,
    TResult Function(ResponseStatus responseStatus)? finished,
    TResult Function(ResponseStatus responseStatus)? error,
    required TResult orElse(),
  }) {
    if (editind != null) {
      return editind(responseStatus);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SmartContractCreationStateEditing value) editind,
    required TResult Function(_SmartContractCreationStateInProgress value)
        inProgress,
    required TResult Function(_SmartContractCreationStateFinished value)
        finished,
    required TResult Function(_SmartContractCreationStateError value) error,
  }) {
    return editind(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SmartContractCreationStateEditing value)? editind,
    TResult? Function(_SmartContractCreationStateInProgress value)? inProgress,
    TResult? Function(_SmartContractCreationStateFinished value)? finished,
    TResult? Function(_SmartContractCreationStateError value)? error,
  }) {
    return editind?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SmartContractCreationStateEditing value)? editind,
    TResult Function(_SmartContractCreationStateInProgress value)? inProgress,
    TResult Function(_SmartContractCreationStateFinished value)? finished,
    TResult Function(_SmartContractCreationStateError value)? error,
    required TResult orElse(),
  }) {
    if (editind != null) {
      return editind(this);
    }
    return orElse();
  }
}

abstract class _SmartContractCreationStateEditing
    implements SmartContractCreationState {
  factory _SmartContractCreationStateEditing(
          {final ResponseStatus? responseStatus}) =
      _$_SmartContractCreationStateEditing;

  @override
  ResponseStatus? get responseStatus;
  @override
  @JsonKey(ignore: true)
  _$$_SmartContractCreationStateEditingCopyWith<
          _$_SmartContractCreationStateEditing>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SmartContractCreationStateInProgressCopyWith<$Res>
    implements $SmartContractCreationStateCopyWith<$Res> {
  factory _$$_SmartContractCreationStateInProgressCopyWith(
          _$_SmartContractCreationStateInProgress value,
          $Res Function(_$_SmartContractCreationStateInProgress) then) =
      __$$_SmartContractCreationStateInProgressCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ResponseStatus? responseStatus});
}

/// @nodoc
class __$$_SmartContractCreationStateInProgressCopyWithImpl<$Res>
    extends _$SmartContractCreationStateCopyWithImpl<$Res,
        _$_SmartContractCreationStateInProgress>
    implements _$$_SmartContractCreationStateInProgressCopyWith<$Res> {
  __$$_SmartContractCreationStateInProgressCopyWithImpl(
      _$_SmartContractCreationStateInProgress _value,
      $Res Function(_$_SmartContractCreationStateInProgress) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? responseStatus = freezed,
  }) {
    return _then(_$_SmartContractCreationStateInProgress(
      responseStatus: freezed == responseStatus
          ? _value.responseStatus
          : responseStatus // ignore: cast_nullable_to_non_nullable
              as ResponseStatus?,
    ));
  }
}

/// @nodoc

class _$_SmartContractCreationStateInProgress
    implements _SmartContractCreationStateInProgress {
  _$_SmartContractCreationStateInProgress({this.responseStatus});

  @override
  final ResponseStatus? responseStatus;

  @override
  String toString() {
    return 'SmartContractCreationState.inProgress(responseStatus: $responseStatus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SmartContractCreationStateInProgress &&
            (identical(other.responseStatus, responseStatus) ||
                other.responseStatus == responseStatus));
  }

  @override
  int get hashCode => Object.hash(runtimeType, responseStatus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SmartContractCreationStateInProgressCopyWith<
          _$_SmartContractCreationStateInProgress>
      get copyWith => __$$_SmartContractCreationStateInProgressCopyWithImpl<
          _$_SmartContractCreationStateInProgress>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ResponseStatus? responseStatus) editind,
    required TResult Function(ResponseStatus? responseStatus) inProgress,
    required TResult Function(ResponseStatus responseStatus) finished,
    required TResult Function(ResponseStatus responseStatus) error,
  }) {
    return inProgress(responseStatus);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ResponseStatus? responseStatus)? editind,
    TResult? Function(ResponseStatus? responseStatus)? inProgress,
    TResult? Function(ResponseStatus responseStatus)? finished,
    TResult? Function(ResponseStatus responseStatus)? error,
  }) {
    return inProgress?.call(responseStatus);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ResponseStatus? responseStatus)? editind,
    TResult Function(ResponseStatus? responseStatus)? inProgress,
    TResult Function(ResponseStatus responseStatus)? finished,
    TResult Function(ResponseStatus responseStatus)? error,
    required TResult orElse(),
  }) {
    if (inProgress != null) {
      return inProgress(responseStatus);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SmartContractCreationStateEditing value) editind,
    required TResult Function(_SmartContractCreationStateInProgress value)
        inProgress,
    required TResult Function(_SmartContractCreationStateFinished value)
        finished,
    required TResult Function(_SmartContractCreationStateError value) error,
  }) {
    return inProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SmartContractCreationStateEditing value)? editind,
    TResult? Function(_SmartContractCreationStateInProgress value)? inProgress,
    TResult? Function(_SmartContractCreationStateFinished value)? finished,
    TResult? Function(_SmartContractCreationStateError value)? error,
  }) {
    return inProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SmartContractCreationStateEditing value)? editind,
    TResult Function(_SmartContractCreationStateInProgress value)? inProgress,
    TResult Function(_SmartContractCreationStateFinished value)? finished,
    TResult Function(_SmartContractCreationStateError value)? error,
    required TResult orElse(),
  }) {
    if (inProgress != null) {
      return inProgress(this);
    }
    return orElse();
  }
}

abstract class _SmartContractCreationStateInProgress
    implements SmartContractCreationState {
  factory _SmartContractCreationStateInProgress(
          {final ResponseStatus? responseStatus}) =
      _$_SmartContractCreationStateInProgress;

  @override
  ResponseStatus? get responseStatus;
  @override
  @JsonKey(ignore: true)
  _$$_SmartContractCreationStateInProgressCopyWith<
          _$_SmartContractCreationStateInProgress>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SmartContractCreationStateFinishedCopyWith<$Res>
    implements $SmartContractCreationStateCopyWith<$Res> {
  factory _$$_SmartContractCreationStateFinishedCopyWith(
          _$_SmartContractCreationStateFinished value,
          $Res Function(_$_SmartContractCreationStateFinished) then) =
      __$$_SmartContractCreationStateFinishedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ResponseStatus responseStatus});
}

/// @nodoc
class __$$_SmartContractCreationStateFinishedCopyWithImpl<$Res>
    extends _$SmartContractCreationStateCopyWithImpl<$Res,
        _$_SmartContractCreationStateFinished>
    implements _$$_SmartContractCreationStateFinishedCopyWith<$Res> {
  __$$_SmartContractCreationStateFinishedCopyWithImpl(
      _$_SmartContractCreationStateFinished _value,
      $Res Function(_$_SmartContractCreationStateFinished) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? responseStatus = null,
  }) {
    return _then(_$_SmartContractCreationStateFinished(
      responseStatus: null == responseStatus
          ? _value.responseStatus
          : responseStatus // ignore: cast_nullable_to_non_nullable
              as ResponseStatus,
    ));
  }
}

/// @nodoc

class _$_SmartContractCreationStateFinished
    implements _SmartContractCreationStateFinished {
  _$_SmartContractCreationStateFinished({required this.responseStatus});

  @override
  final ResponseStatus responseStatus;

  @override
  String toString() {
    return 'SmartContractCreationState.finished(responseStatus: $responseStatus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SmartContractCreationStateFinished &&
            (identical(other.responseStatus, responseStatus) ||
                other.responseStatus == responseStatus));
  }

  @override
  int get hashCode => Object.hash(runtimeType, responseStatus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SmartContractCreationStateFinishedCopyWith<
          _$_SmartContractCreationStateFinished>
      get copyWith => __$$_SmartContractCreationStateFinishedCopyWithImpl<
          _$_SmartContractCreationStateFinished>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ResponseStatus? responseStatus) editind,
    required TResult Function(ResponseStatus? responseStatus) inProgress,
    required TResult Function(ResponseStatus responseStatus) finished,
    required TResult Function(ResponseStatus responseStatus) error,
  }) {
    return finished(responseStatus);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ResponseStatus? responseStatus)? editind,
    TResult? Function(ResponseStatus? responseStatus)? inProgress,
    TResult? Function(ResponseStatus responseStatus)? finished,
    TResult? Function(ResponseStatus responseStatus)? error,
  }) {
    return finished?.call(responseStatus);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ResponseStatus? responseStatus)? editind,
    TResult Function(ResponseStatus? responseStatus)? inProgress,
    TResult Function(ResponseStatus responseStatus)? finished,
    TResult Function(ResponseStatus responseStatus)? error,
    required TResult orElse(),
  }) {
    if (finished != null) {
      return finished(responseStatus);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SmartContractCreationStateEditing value) editind,
    required TResult Function(_SmartContractCreationStateInProgress value)
        inProgress,
    required TResult Function(_SmartContractCreationStateFinished value)
        finished,
    required TResult Function(_SmartContractCreationStateError value) error,
  }) {
    return finished(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SmartContractCreationStateEditing value)? editind,
    TResult? Function(_SmartContractCreationStateInProgress value)? inProgress,
    TResult? Function(_SmartContractCreationStateFinished value)? finished,
    TResult? Function(_SmartContractCreationStateError value)? error,
  }) {
    return finished?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SmartContractCreationStateEditing value)? editind,
    TResult Function(_SmartContractCreationStateInProgress value)? inProgress,
    TResult Function(_SmartContractCreationStateFinished value)? finished,
    TResult Function(_SmartContractCreationStateError value)? error,
    required TResult orElse(),
  }) {
    if (finished != null) {
      return finished(this);
    }
    return orElse();
  }
}

abstract class _SmartContractCreationStateFinished
    implements SmartContractCreationState {
  factory _SmartContractCreationStateFinished(
          {required final ResponseStatus responseStatus}) =
      _$_SmartContractCreationStateFinished;

  @override
  ResponseStatus get responseStatus;
  @override
  @JsonKey(ignore: true)
  _$$_SmartContractCreationStateFinishedCopyWith<
          _$_SmartContractCreationStateFinished>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SmartContractCreationStateErrorCopyWith<$Res>
    implements $SmartContractCreationStateCopyWith<$Res> {
  factory _$$_SmartContractCreationStateErrorCopyWith(
          _$_SmartContractCreationStateError value,
          $Res Function(_$_SmartContractCreationStateError) then) =
      __$$_SmartContractCreationStateErrorCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ResponseStatus responseStatus});
}

/// @nodoc
class __$$_SmartContractCreationStateErrorCopyWithImpl<$Res>
    extends _$SmartContractCreationStateCopyWithImpl<$Res,
        _$_SmartContractCreationStateError>
    implements _$$_SmartContractCreationStateErrorCopyWith<$Res> {
  __$$_SmartContractCreationStateErrorCopyWithImpl(
      _$_SmartContractCreationStateError _value,
      $Res Function(_$_SmartContractCreationStateError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? responseStatus = null,
  }) {
    return _then(_$_SmartContractCreationStateError(
      responseStatus: null == responseStatus
          ? _value.responseStatus
          : responseStatus // ignore: cast_nullable_to_non_nullable
              as ResponseStatus,
    ));
  }
}

/// @nodoc

class _$_SmartContractCreationStateError
    implements _SmartContractCreationStateError {
  _$_SmartContractCreationStateError({required this.responseStatus});

  @override
  final ResponseStatus responseStatus;

  @override
  String toString() {
    return 'SmartContractCreationState.error(responseStatus: $responseStatus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SmartContractCreationStateError &&
            (identical(other.responseStatus, responseStatus) ||
                other.responseStatus == responseStatus));
  }

  @override
  int get hashCode => Object.hash(runtimeType, responseStatus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SmartContractCreationStateErrorCopyWith<
          _$_SmartContractCreationStateError>
      get copyWith => __$$_SmartContractCreationStateErrorCopyWithImpl<
          _$_SmartContractCreationStateError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ResponseStatus? responseStatus) editind,
    required TResult Function(ResponseStatus? responseStatus) inProgress,
    required TResult Function(ResponseStatus responseStatus) finished,
    required TResult Function(ResponseStatus responseStatus) error,
  }) {
    return error(responseStatus);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ResponseStatus? responseStatus)? editind,
    TResult? Function(ResponseStatus? responseStatus)? inProgress,
    TResult? Function(ResponseStatus responseStatus)? finished,
    TResult? Function(ResponseStatus responseStatus)? error,
  }) {
    return error?.call(responseStatus);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ResponseStatus? responseStatus)? editind,
    TResult Function(ResponseStatus? responseStatus)? inProgress,
    TResult Function(ResponseStatus responseStatus)? finished,
    TResult Function(ResponseStatus responseStatus)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(responseStatus);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SmartContractCreationStateEditing value) editind,
    required TResult Function(_SmartContractCreationStateInProgress value)
        inProgress,
    required TResult Function(_SmartContractCreationStateFinished value)
        finished,
    required TResult Function(_SmartContractCreationStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SmartContractCreationStateEditing value)? editind,
    TResult? Function(_SmartContractCreationStateInProgress value)? inProgress,
    TResult? Function(_SmartContractCreationStateFinished value)? finished,
    TResult? Function(_SmartContractCreationStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SmartContractCreationStateEditing value)? editind,
    TResult Function(_SmartContractCreationStateInProgress value)? inProgress,
    TResult Function(_SmartContractCreationStateFinished value)? finished,
    TResult Function(_SmartContractCreationStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _SmartContractCreationStateError
    implements SmartContractCreationState {
  factory _SmartContractCreationStateError(
          {required final ResponseStatus responseStatus}) =
      _$_SmartContractCreationStateError;

  @override
  ResponseStatus get responseStatus;
  @override
  @JsonKey(ignore: true)
  _$$_SmartContractCreationStateErrorCopyWith<
          _$_SmartContractCreationStateError>
      get copyWith => throw _privateConstructorUsedError;
}
