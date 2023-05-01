// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'word_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_WordEntity _$$_WordEntityFromJson(Map<String, dynamic> json) =>
    _$_WordEntity(
      id: json['id'] as int,
      edition: DateTime.parse(json['edition'] as String),
      title: json['title'] as String,
      translation: json['translation'] as String,
      description: json['description'] as String?,
      user: json['user'] == null
          ? null
          : UserEntity.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_WordEntityToJson(_$_WordEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'edition': instance.edition.toIso8601String(),
      'title': instance.title,
      'translation': instance.translation,
      'description': instance.description,
      'user': instance.user,
    };
