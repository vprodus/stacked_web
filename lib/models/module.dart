import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stacked_web/models/chapter.dart';
import 'package:stacked_web/models/side_bar_item.dart';

part 'module.freezed.dart';
part 'module.g.dart';

@freezed
class Module with _$Module implements SideBarItem {
  const Module._();
  const factory Module({
    required String id,
    required String title,
    String? leadingEmoji,
    required List<Chapter> chapters,
  }) = _Module;

  factory Module.fromJson(Map<String, dynamic> json) => _$ModuleFromJson(json);

  @override
  bool isSelected(String id) => chapters.any((element) => element.id == id);
}
