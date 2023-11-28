// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'module.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ModuleImpl _$$ModuleImplFromJson(Map<String, dynamic> json) => _$ModuleImpl(
      id: json['id'] as String,
      title: json['title'] as String,
      leadingEmoji: json['leadingEmoji'] as String?,
      chapters: (json['chapters'] as List<dynamic>)
          .map((e) => Chapter.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ModuleImplToJson(_$ModuleImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'leadingEmoji': instance.leadingEmoji,
      'chapters': instance.chapters,
    };
