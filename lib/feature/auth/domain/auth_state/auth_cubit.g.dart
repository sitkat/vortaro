// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_cubit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_$AuthStateNotAuthrized _$$_$AuthStateNotAuthrizedFromJson(
        Map<String, dynamic> json) =>
    _$_$AuthStateNotAuthrized(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$_$AuthStateNotAuthrizedToJson(
        _$_$AuthStateNotAuthrized instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$_$AuthStateAuthrized _$$_$AuthStateAuthrizedFromJson(
        Map<String, dynamic> json) =>
    _$_$AuthStateAuthrized(
      UserEntity.fromJson(json['userEntity'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$_$AuthStateAuthrizedToJson(
        _$_$AuthStateAuthrized instance) =>
    <String, dynamic>{
      'userEntity': instance.userEntity,
      'runtimeType': instance.$type,
    };

_$_$AuthStateWaiting _$$_$AuthStateWaitingFromJson(Map<String, dynamic> json) =>
    _$_$AuthStateWaiting(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$_$AuthStateWaitingToJson(
        _$_$AuthStateWaiting instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$_$AuthStateError _$$_$AuthStateErrorFromJson(Map<String, dynamic> json) =>
    _$_$AuthStateError(
      json['error'],
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$_$AuthStateErrorToJson(_$_$AuthStateError instance) =>
    <String, dynamic>{
      'error': instance.error,
      'runtimeType': instance.$type,
    };
