import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stacked_web/models/side_bar_item.dart';

part 'chapter.freezed.dart';
part 'chapter.g.dart';

@freezed
class Chapter with _$Chapter implements SideBarItem {
  const Chapter._();
  const factory Chapter({
    required String id,
    required String title,
    required String description,
    required int durationInSeconds,
    String? videoUrl,
    String? writtenContent,
  }) = _Chapter;

  factory Chapter.fromJson(Map<String, dynamic> json) =>
      _$ChapterFromJson(json);

  String get durationReadableTime {
    final duration = Duration(seconds: durationInSeconds);

    String twoDigits(int n) => n.toString().padLeft(2, "0");
    String twoDigitMinutes = twoDigits(duration.inMinutes.remainder(60));
    return "${twoDigits(duration.inHours)}:$twoDigitMinutes";
  }

  @override
  bool isSelected(String id) => this.id == id;
}
