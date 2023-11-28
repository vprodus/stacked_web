// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chapter.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChapterImpl _$$ChapterImplFromJson(Map<String, dynamic> json) =>
    _$ChapterImpl(
      id: json['id'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      durationInSeconds: json['durationInSeconds'] as int,
      videoUrl: json['videoUrl'] as String?,
      writtenContent: json['writtenContent'] as String?,
    );

Map<String, dynamic> _$$ChapterImplToJson(_$ChapterImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'durationInSeconds': instance.durationInSeconds,
      'videoUrl': instance.videoUrl,
      'writtenContent': instance.writtenContent,
    };
