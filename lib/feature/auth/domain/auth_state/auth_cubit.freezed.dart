// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notAuthrized,
    required TResult Function(UserEntity userEntity) authrized,
    required TResult Function() waiting,
    required TResult Function(dynamic error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? notAuthrized,
    TResult? Function(UserEntity userEntity)? authrized,
    TResult? Function()? waiting,
    TResult? Function(dynamic error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notAuthrized,
    TResult Function(UserEntity userEntity)? authrized,
    TResult Function()? waiting,
    TResult Function(dynamic error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$AuthStateNotAuthrized value) notAuthrized,
    required TResult Function(_$AuthStateAuthrized value) authrized,
    required TResult Function(_$AuthStateWaiting value) waiting,
    required TResult Function(_$AuthStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$AuthStateNotAuthrized value)? notAuthrized,
    TResult? Function(_$AuthStateAuthrized value)? authrized,
    TResult? Function(_$AuthStateWaiting value)? waiting,
    TResult? Function(_$AuthStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$AuthStateNotAuthrized value)? notAuthrized,
    TResult Function(_$AuthStateAuthrized value)? authrized,
    TResult Function(_$AuthStateWaiting value)? waiting,
    TResult Function(_$AuthStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_$AuthStateNotAuthrizedCopyWith<$Res> {
  factory _$$_$AuthStateNotAuthrizedCopyWith(_$_$AuthStateNotAuthrized value,
          $Res Function(_$_$AuthStateNotAuthrized) then) =
      __$$_$AuthStateNotAuthrizedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_$AuthStateNotAuthrizedCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_$AuthStateNotAuthrized>
    implements _$$_$AuthStateNotAuthrizedCopyWith<$Res> {
  __$$_$AuthStateNotAuthrizedCopyWithImpl(_$_$AuthStateNotAuthrized _value,
      $Res Function(_$_$AuthStateNotAuthrized) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_$AuthStateNotAuthrized implements _$AuthStateNotAuthrized {
  _$_$AuthStateNotAuthrized();

  @override
  String toString() {
    return 'AuthState.notAuthrized()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_$AuthStateNotAuthrized);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notAuthrized,
    required TResult Function(UserEntity userEntity) authrized,
    required TResult Function() waiting,
    required TResult Function(dynamic error) error,
  }) {
    return notAuthrized();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? notAuthrized,
    TResult? Function(UserEntity userEntity)? authrized,
    TResult? Function()? waiting,
    TResult? Function(dynamic error)? error,
  }) {
    return notAuthrized?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notAuthrized,
    TResult Function(UserEntity userEntity)? authrized,
    TResult Function()? waiting,
    TResult Function(dynamic error)? error,
    required TResult orElse(),
  }) {
    if (notAuthrized != null) {
      return notAuthrized();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$AuthStateNotAuthrized value) notAuthrized,
    required TResult Function(_$AuthStateAuthrized value) authrized,
    required TResult Function(_$AuthStateWaiting value) waiting,
    required TResult Function(_$AuthStateError value) error,
  }) {
    return notAuthrized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$AuthStateNotAuthrized value)? notAuthrized,
    TResult? Function(_$AuthStateAuthrized value)? authrized,
    TResult? Function(_$AuthStateWaiting value)? waiting,
    TResult? Function(_$AuthStateError value)? error,
  }) {
    return notAuthrized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$AuthStateNotAuthrized value)? notAuthrized,
    TResult Function(_$AuthStateAuthrized value)? authrized,
    TResult Function(_$AuthStateWaiting value)? waiting,
    TResult Function(_$AuthStateError value)? error,
    required TResult orElse(),
  }) {
    if (notAuthrized != null) {
      return notAuthrized(this);
    }
    return orElse();
  }
}

abstract class _$AuthStateNotAuthrized implements AuthState {
  factory _$AuthStateNotAuthrized() = _$_$AuthStateNotAuthrized;
}

/// @nodoc
abstract class _$$_$AuthStateAuthrizedCopyWith<$Res> {
  factory _$$_$AuthStateAuthrizedCopyWith(_$_$AuthStateAuthrized value,
          $Res Function(_$_$AuthStateAuthrized) then) =
      __$$_$AuthStateAuthrizedCopyWithImpl<$Res>;
  @useResult
  $Res call({UserEntity userEntity});

  $UserEntityCopyWith<$Res> get userEntity;
}

/// @nodoc
class __$$_$AuthStateAuthrizedCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_$AuthStateAuthrized>
    implements _$$_$AuthStateAuthrizedCopyWith<$Res> {
  __$$_$AuthStateAuthrizedCopyWithImpl(_$_$AuthStateAuthrized _value,
      $Res Function(_$_$AuthStateAuthrized) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userEntity = null,
  }) {
    return _then(_$_$AuthStateAuthrized(
      null == userEntity
          ? _value.userEntity
          : userEntity // ignore: cast_nullable_to_non_nullable
              as UserEntity,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $UserEntityCopyWith<$Res> get userEntity {
    return $UserEntityCopyWith<$Res>(_value.userEntity, (value) {
      return _then(_value.copyWith(userEntity: value));
    });
  }
}

/// @nodoc

class _$_$AuthStateAuthrized implements _$AuthStateAuthrized {
  _$_$AuthStateAuthrized(this.userEntity);

  @override
  final UserEntity userEntity;

  @override
  String toString() {
    return 'AuthState.authrized(userEntity: $userEntity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_$AuthStateAuthrized &&
            (identical(other.userEntity, userEntity) ||
                other.userEntity == userEntity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userEntity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_$AuthStateAuthrizedCopyWith<_$_$AuthStateAuthrized> get copyWith =>
      __$$_$AuthStateAuthrizedCopyWithImpl<_$_$AuthStateAuthrized>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notAuthrized,
    required TResult Function(UserEntity userEntity) authrized,
    required TResult Function() waiting,
    required TResult Function(dynamic error) error,
  }) {
    return authrized(userEntity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? notAuthrized,
    TResult? Function(UserEntity userEntity)? authrized,
    TResult? Function()? waiting,
    TResult? Function(dynamic error)? error,
  }) {
    return authrized?.call(userEntity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notAuthrized,
    TResult Function(UserEntity userEntity)? authrized,
    TResult Function()? waiting,
    TResult Function(dynamic error)? error,
    required TResult orElse(),
  }) {
    if (authrized != null) {
      return authrized(userEntity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$AuthStateNotAuthrized value) notAuthrized,
    required TResult Function(_$AuthStateAuthrized value) authrized,
    required TResult Function(_$AuthStateWaiting value) waiting,
    required TResult Function(_$AuthStateError value) error,
  }) {
    return authrized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$AuthStateNotAuthrized value)? notAuthrized,
    TResult? Function(_$AuthStateAuthrized value)? authrized,
    TResult? Function(_$AuthStateWaiting value)? waiting,
    TResult? Function(_$AuthStateError value)? error,
  }) {
    return authrized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$AuthStateNotAuthrized value)? notAuthrized,
    TResult Function(_$AuthStateAuthrized value)? authrized,
    TResult Function(_$AuthStateWaiting value)? waiting,
    TResult Function(_$AuthStateError value)? error,
    required TResult orElse(),
  }) {
    if (authrized != null) {
      return authrized(this);
    }
    return orElse();
  }
}

abstract class _$AuthStateAuthrized implements AuthState {
  factory _$AuthStateAuthrized(final UserEntity userEntity) =
      _$_$AuthStateAuthrized;

  UserEntity get userEntity;
  @JsonKey(ignore: true)
  _$$_$AuthStateAuthrizedCopyWith<_$_$AuthStateAuthrized> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_$AuthStateWaitingCopyWith<$Res> {
  factory _$$_$AuthStateWaitingCopyWith(_$_$AuthStateWaiting value,
          $Res Function(_$_$AuthStateWaiting) then) =
      __$$_$AuthStateWaitingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_$AuthStateWaitingCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_$AuthStateWaiting>
    implements _$$_$AuthStateWaitingCopyWith<$Res> {
  __$$_$AuthStateWaitingCopyWithImpl(
      _$_$AuthStateWaiting _value, $Res Function(_$_$AuthStateWaiting) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_$AuthStateWaiting implements _$AuthStateWaiting {
  _$_$AuthStateWaiting();

  @override
  String toString() {
    return 'AuthState.waiting()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_$AuthStateWaiting);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notAuthrized,
    required TResult Function(UserEntity userEntity) authrized,
    required TResult Function() waiting,
    required TResult Function(dynamic error) error,
  }) {
    return waiting();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? notAuthrized,
    TResult? Function(UserEntity userEntity)? authrized,
    TResult? Function()? waiting,
    TResult? Function(dynamic error)? error,
  }) {
    return waiting?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notAuthrized,
    TResult Function(UserEntity userEntity)? authrized,
    TResult Function()? waiting,
    TResult Function(dynamic error)? error,
    required TResult orElse(),
  }) {
    if (waiting != null) {
      return waiting();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$AuthStateNotAuthrized value) notAuthrized,
    required TResult Function(_$AuthStateAuthrized value) authrized,
    required TResult Function(_$AuthStateWaiting value) waiting,
    required TResult Function(_$AuthStateError value) error,
  }) {
    return waiting(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$AuthStateNotAuthrized value)? notAuthrized,
    TResult? Function(_$AuthStateAuthrized value)? authrized,
    TResult? Function(_$AuthStateWaiting value)? waiting,
    TResult? Function(_$AuthStateError value)? error,
  }) {
    return waiting?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$AuthStateNotAuthrized value)? notAuthrized,
    TResult Function(_$AuthStateAuthrized value)? authrized,
    TResult Function(_$AuthStateWaiting value)? waiting,
    TResult Function(_$AuthStateError value)? error,
    required TResult orElse(),
  }) {
    if (waiting != null) {
      return waiting(this);
    }
    return orElse();
  }
}

abstract class _$AuthStateWaiting implements AuthState {
  factory _$AuthStateWaiting() = _$_$AuthStateWaiting;
}

/// @nodoc
abstract class _$$_$AuthStateErrorCopyWith<$Res> {
  factory _$$_$AuthStateErrorCopyWith(
          _$_$AuthStateError value, $Res Function(_$_$AuthStateError) then) =
      __$$_$AuthStateErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({dynamic error});
}

/// @nodoc
class __$$_$AuthStateErrorCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_$AuthStateError>
    implements _$$_$AuthStateErrorCopyWith<$Res> {
  __$$_$AuthStateErrorCopyWithImpl(
      _$_$AuthStateError _value, $Res Function(_$_$AuthStateError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_$_$AuthStateError(
      freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$_$AuthStateError implements _$AuthStateError {
  _$_$AuthStateError(this.error);

  @override
  final dynamic error;

  @override
  String toString() {
    return 'AuthState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_$AuthStateError &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_$AuthStateErrorCopyWith<_$_$AuthStateError> get copyWith =>
      __$$_$AuthStateErrorCopyWithImpl<_$_$AuthStateError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notAuthrized,
    required TResult Function(UserEntity userEntity) authrized,
    required TResult Function() waiting,
    required TResult Function(dynamic error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? notAuthrized,
    TResult? Function(UserEntity userEntity)? authrized,
    TResult? Function()? waiting,
    TResult? Function(dynamic error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notAuthrized,
    TResult Function(UserEntity userEntity)? authrized,
    TResult Function()? waiting,
    TResult Function(dynamic error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$AuthStateNotAuthrized value) notAuthrized,
    required TResult Function(_$AuthStateAuthrized value) authrized,
    required TResult Function(_$AuthStateWaiting value) waiting,
    required TResult Function(_$AuthStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$AuthStateNotAuthrized value)? notAuthrized,
    TResult? Function(_$AuthStateAuthrized value)? authrized,
    TResult? Function(_$AuthStateWaiting value)? waiting,
    TResult? Function(_$AuthStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$AuthStateNotAuthrized value)? notAuthrized,
    TResult Function(_$AuthStateAuthrized value)? authrized,
    TResult Function(_$AuthStateWaiting value)? waiting,
    TResult Function(_$AuthStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _$AuthStateError implements AuthState {
  factory _$AuthStateError(final dynamic error) = _$_$AuthStateError;

  dynamic get error;
  @JsonKey(ignore: true)
  _$$_$AuthStateErrorCopyWith<_$_$AuthStateError> get copyWith =>
      throw _privateConstructorUsedError;
}
