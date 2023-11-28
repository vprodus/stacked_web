import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stacked_web/models/chapter.dart';
import 'package:stacked_web/models/module.dart';

part 'course.freezed.dart';
part 'course.g.dart';

@freezed
class Course with _$Course {
  const Course._();
  const factory Course({
    required String id,
    required String readableId,
    required String title,
    String? description,
    required List<Module> modules,
    @Default([]) List<String> perks,
  }) = _Course;

  factory Course.fromJson(Map<String, dynamic> json) => _$CourseFromJson(json);

  Chapter chapterForId(String chapterId) => modules
      .map((e) => List.from(e.chapters))
      .reduce((value, element) => value..addAll(element))
      .firstWhere((element) => element.id == chapterId);

  bool get hasDescription => description != null;

  bool get hasPerks => perks.isEmpty;
}
