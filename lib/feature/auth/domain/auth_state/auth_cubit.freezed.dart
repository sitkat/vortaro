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

AuthState _$AuthStateFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'notAuthorized':
      return _$AuthStateNotAuthrized.fromJson(json);
    case 'authorized':
      return _$AuthStateAuthrized.fromJson(json);
    case 'waiting':
      return _$AuthStateWaiting.fromJson(json);
    case 'error':
      return _$AuthStateError.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'AuthState',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notAuthorized,
    required TResult Function(UserEntity userEntity) authorized,
    required TResult Function() waiting,
    required TResult Function(dynamic error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? notAuthorized,
    TResult? Function(UserEntity userEntity)? authorized,
    TResult? Function()? waiting,
    TResult? Function(dynamic error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notAuthorized,
    TResult Function(UserEntity userEntity)? authorized,
    TResult Function()? waiting,
    TResult Function(dynamic error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$AuthStateNotAuthrized value) notAuthorized,
    required TResult Function(_$AuthStateAuthrized value) authorized,
    required TResult Function(_$AuthStateWaiting value) waiting,
    required TResult Function(_$AuthStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$AuthStateNotAuthrized value)? notAuthorized,
    TResult? Function(_$AuthStateAuthrized value)? authorized,
    TResult? Function(_$AuthStateWaiting value)? waiting,
    TResult? Function(_$AuthStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$AuthStateNotAuthrized value)? notAuthorized,
    TResult Function(_$AuthStateAuthrized value)? authorized,
    TResult Function(_$AuthStateWaiting value)? waiting,
    TResult Function(_$AuthStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
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
@JsonSerializable()
class _$_$AuthStateNotAuthrized implements _$AuthStateNotAuthrized {
  _$_$AuthStateNotAuthrized({final String? $type})
      : $type = $type ?? 'notAuthorized';

  factory _$_$AuthStateNotAuthrized.fromJson(Map<String, dynamic> json) =>
      _$$_$AuthStateNotAuthrizedFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'AuthState.notAuthorized()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_$AuthStateNotAuthrized);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notAuthorized,
    required TResult Function(UserEntity userEntity) authorized,
    required TResult Function() waiting,
    required TResult Function(dynamic error) error,
  }) {
    return notAuthorized();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? notAuthorized,
    TResult? Function(UserEntity userEntity)? authorized,
    TResult? Function()? waiting,
    TResult? Function(dynamic error)? error,
  }) {
    return notAuthorized?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notAuthorized,
    TResult Function(UserEntity userEntity)? authorized,
    TResult Function()? waiting,
    TResult Function(dynamic error)? error,
    required TResult orElse(),
  }) {
    if (notAuthorized != null) {
      return notAuthorized();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$AuthStateNotAuthrized value) notAuthorized,
    required TResult Function(_$AuthStateAuthrized value) authorized,
    required TResult Function(_$AuthStateWaiting value) waiting,
    required TResult Function(_$AuthStateError value) error,
  }) {
    return notAuthorized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$AuthStateNotAuthrized value)? notAuthorized,
    TResult? Function(_$AuthStateAuthrized value)? authorized,
    TResult? Function(_$AuthStateWaiting value)? waiting,
    TResult? Function(_$AuthStateError value)? error,
  }) {
    return notAuthorized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$AuthStateNotAuthrized value)? notAuthorized,
    TResult Function(_$AuthStateAuthrized value)? authorized,
    TResult Function(_$AuthStateWaiting value)? waiting,
    TResult Function(_$AuthStateError value)? error,
    required TResult orElse(),
  }) {
    if (notAuthorized != null) {
      return notAuthorized(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_$AuthStateNotAuthrizedToJson(
      this,
    );
  }
}

abstract class _$AuthStateNotAuthrized implements AuthState {
  factory _$AuthStateNotAuthrized() = _$_$AuthStateNotAuthrized;

  factory _$AuthStateNotAuthrized.fromJson(Map<String, dynamic> json) =
      _$_$AuthStateNotAuthrized.fromJson;
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
@JsonSerializable()
class _$_$AuthStateAuthrized implements _$AuthStateAuthrized {
  _$_$AuthStateAuthrized(this.userEntity, {final String? $type})
      : $type = $type ?? 'authorized';

  factory _$_$AuthStateAuthrized.fromJson(Map<String, dynamic> json) =>
      _$$_$AuthStateAuthrizedFromJson(json);

  @override
  final UserEntity userEntity;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'AuthState.authorized(userEntity: $userEntity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_$AuthStateAuthrized &&
            (identical(other.userEntity, userEntity) ||
                other.userEntity == userEntity));
  }

  @JsonKey(ignore: true)
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
    required TResult Function() notAuthorized,
    required TResult Function(UserEntity userEntity) authorized,
    required TResult Function() waiting,
    required TResult Function(dynamic error) error,
  }) {
    return authorized(userEntity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? notAuthorized,
    TResult? Function(UserEntity userEntity)? authorized,
    TResult? Function()? waiting,
    TResult? Function(dynamic error)? error,
  }) {
    return authorized?.call(userEntity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notAuthorized,
    TResult Function(UserEntity userEntity)? authorized,
    TResult Function()? waiting,
    TResult Function(dynamic error)? error,
    required TResult orElse(),
  }) {
    if (authorized != null) {
      return authorized(userEntity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$AuthStateNotAuthrized value) notAuthorized,
    required TResult Function(_$AuthStateAuthrized value) authorized,
    required TResult Function(_$AuthStateWaiting value) waiting,
    required TResult Function(_$AuthStateError value) error,
  }) {
    return authorized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$AuthStateNotAuthrized value)? notAuthorized,
    TResult? Function(_$AuthStateAuthrized value)? authorized,
    TResult? Function(_$AuthStateWaiting value)? waiting,
    TResult? Function(_$AuthStateError value)? error,
  }) {
    return authorized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$AuthStateNotAuthrized value)? notAuthorized,
    TResult Function(_$AuthStateAuthrized value)? authorized,
    TResult Function(_$AuthStateWaiting value)? waiting,
    TResult Function(_$AuthStateError value)? error,
    required TResult orElse(),
  }) {
    if (authorized != null) {
      return authorized(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_$AuthStateAuthrizedToJson(
      this,
    );
  }
}

abstract class _$AuthStateAuthrized implements AuthState {
  factory _$AuthStateAuthrized(final UserEntity userEntity) =
      _$_$AuthStateAuthrized;

  factory _$AuthStateAuthrized.fromJson(Map<String, dynamic> json) =
      _$_$AuthStateAuthrized.fromJson;

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
@JsonSerializable()
class _$_$AuthStateWaiting implements _$AuthStateWaiting {
  _$_$AuthStateWaiting({final String? $type}) : $type = $type ?? 'waiting';

  factory _$_$AuthStateWaiting.fromJson(Map<String, dynamic> json) =>
      _$$_$AuthStateWaitingFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'AuthState.waiting()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_$AuthStateWaiting);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notAuthorized,
    required TResult Function(UserEntity userEntity) authorized,
    required TResult Function() waiting,
    required TResult Function(dynamic error) error,
  }) {
    return waiting();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? notAuthorized,
    TResult? Function(UserEntity userEntity)? authorized,
    TResult? Function()? waiting,
    TResult? Function(dynamic error)? error,
  }) {
    return waiting?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notAuthorized,
    TResult Function(UserEntity userEntity)? authorized,
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
    required TResult Function(_$AuthStateNotAuthrized value) notAuthorized,
    required TResult Function(_$AuthStateAuthrized value) authorized,
    required TResult Function(_$AuthStateWaiting value) waiting,
    required TResult Function(_$AuthStateError value) error,
  }) {
    return waiting(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$AuthStateNotAuthrized value)? notAuthorized,
    TResult? Function(_$AuthStateAuthrized value)? authorized,
    TResult? Function(_$AuthStateWaiting value)? waiting,
    TResult? Function(_$AuthStateError value)? error,
  }) {
    return waiting?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$AuthStateNotAuthrized value)? notAuthorized,
    TResult Function(_$AuthStateAuthrized value)? authorized,
    TResult Function(_$AuthStateWaiting value)? waiting,
    TResult Function(_$AuthStateError value)? error,
    required TResult orElse(),
  }) {
    if (waiting != null) {
      return waiting(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_$AuthStateWaitingToJson(
      this,
    );
  }
}

abstract class _$AuthStateWaiting implements AuthState {
  factory _$AuthStateWaiting() = _$_$AuthStateWaiting;

  factory _$AuthStateWaiting.fromJson(Map<String, dynamic> json) =
      _$_$AuthStateWaiting.fromJson;
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
@JsonSerializable()
class _$_$AuthStateError implements _$AuthStateError {
  _$_$AuthStateError(this.error, {final String? $type})
      : $type = $type ?? 'error';

  factory _$_$AuthStateError.fromJson(Map<String, dynamic> json) =>
      _$$_$AuthStateErrorFromJson(json);

  @override
  final dynamic error;

  @JsonKey(name: 'runtimeType')
  final String $type;

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

  @JsonKey(ignore: true)
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
    required TResult Function() notAuthorized,
    required TResult Function(UserEntity userEntity) authorized,
    required TResult Function() waiting,
    required TResult Function(dynamic error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? notAuthorized,
    TResult? Function(UserEntity userEntity)? authorized,
    TResult? Function()? waiting,
    TResult? Function(dynamic error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notAuthorized,
    TResult Function(UserEntity userEntity)? authorized,
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
    required TResult Function(_$AuthStateNotAuthrized value) notAuthorized,
    required TResult Function(_$AuthStateAuthrized value) authorized,
    required TResult Function(_$AuthStateWaiting value) waiting,
    required TResult Function(_$AuthStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$AuthStateNotAuthrized value)? notAuthorized,
    TResult? Function(_$AuthStateAuthrized value)? authorized,
    TResult? Function(_$AuthStateWaiting value)? waiting,
    TResult? Function(_$AuthStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$AuthStateNotAuthrized value)? notAuthorized,
    TResult Function(_$AuthStateAuthrized value)? authorized,
    TResult Function(_$AuthStateWaiting value)? waiting,
    TResult Function(_$AuthStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_$AuthStateErrorToJson(
      this,
    );
  }
}

abstract class _$AuthStateError implements AuthState {
  factory _$AuthStateError(final dynamic error) = _$_$AuthStateError;

  factory _$AuthStateError.fromJson(Map<String, dynamic> json) =
      _$_$AuthStateError.fromJson;

  dynamic get error;
  @JsonKey(ignore: true)
  _$$_$AuthStateErrorCopyWith<_$_$AuthStateError> get copyWith =>
      throw _privateConstructorUsedError;
}
