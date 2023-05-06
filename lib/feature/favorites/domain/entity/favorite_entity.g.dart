// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favorite_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FavoriteEntity _$$_FavoriteEntityFromJson(Map<String, dynamic> json) =>
    _$_FavoriteEntity(
      id: json['id'] as int,
      idWord: json['idWord'] as int?,
      user: UserEntity.fromJson(json['user'] as Map<String, dynamic>),
      word: WordEntity.fromJson(json['word'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_FavoriteEntityToJson(_$_FavoriteEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'idWord': instance.idWord,
      'user': instance.user,
      'word': instance.word,
    };
