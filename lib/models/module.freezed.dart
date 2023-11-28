// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'module.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Module _$ModuleFromJson(Map<String, dynamic> json) {
  return _Module.fromJson(json);
}

/// @nodoc
mixin _$Module {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String? get leadingEmoji => throw _privateConstructorUsedError;
  List<Chapter> get chapters => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ModuleCopyWith<Module> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ModuleCopyWith<$Res> {
  factory $ModuleCopyWith(Module value, $Res Function(Module) then) =
      _$ModuleCopyWithImpl<$Res, Module>;
  @useResult
  $Res call(
      {String id, String title, String? leadingEmoji, List<Chapter> chapters});
}

/// @nodoc
class _$ModuleCopyWithImpl<$Res, $Val extends Module>
    implements $ModuleCopyWith<$Res> {
  _$ModuleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? leadingEmoji = freezed,
    Object? chapters = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      leadingEmoji: freezed == leadingEmoji
          ? _value.leadingEmoji
          : leadingEmoji // ignore: cast_nullable_to_non_nullable
              as String?,
      chapters: null == chapters
          ? _value.chapters
          : chapters // ignore: cast_nullable_to_non_nullable
              as List<Chapter>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ModuleImplCopyWith<$Res> implements $ModuleCopyWith<$Res> {
  factory _$$ModuleImplCopyWith(
          _$ModuleImpl value, $Res Function(_$ModuleImpl) then) =
      __$$ModuleImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id, String title, String? leadingEmoji, List<Chapter> chapters});
}

/// @nodoc
class __$$ModuleImplCopyWithImpl<$Res>
    extends _$ModuleCopyWithImpl<$Res, _$ModuleImpl>
    implements _$$ModuleImplCopyWith<$Res> {
  __$$ModuleImplCopyWithImpl(
      _$ModuleImpl _value, $Res Function(_$ModuleImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? leadingEmoji = freezed,
    Object? chapters = null,
  }) {
    return _then(_$ModuleImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      leadingEmoji: freezed == leadingEmoji
          ? _value.leadingEmoji
          : leadingEmoji // ignore: cast_nullable_to_non_nullable
              as String?,
      chapters: null == chapters
          ? _value._chapters
          : chapters // ignore: cast_nullable_to_non_nullable
              as List<Chapter>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ModuleImpl extends _Module {
  const _$ModuleImpl(
      {required this.id,
      required this.title,
      this.leadingEmoji,
      required final List<Chapter> chapters})
      : _chapters = chapters,
        super._();

  factory _$ModuleImpl.fromJson(Map<String, dynamic> json) =>
      _$$ModuleImplFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final String? leadingEmoji;
  final List<Chapter> _chapters;
  @override
  List<Chapter> get chapters {
    if (_chapters is EqualUnmodifiableListView) return _chapters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_chapters);
  }

  @override
  String toString() {
    return 'Module(id: $id, title: $title, leadingEmoji: $leadingEmoji, chapters: $chapters)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ModuleImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.leadingEmoji, leadingEmoji) ||
                other.leadingEmoji == leadingEmoji) &&
            const DeepCollectionEquality().equals(other._chapters, _chapters));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, leadingEmoji,
      const DeepCollectionEquality().hash(_chapters));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ModuleImplCopyWith<_$ModuleImpl> get copyWith =>
      __$$ModuleImplCopyWithImpl<_$ModuleImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ModuleImplToJson(
      this,
    );
  }
}

abstract class _Module extends Module {
  const factory _Module(
      {required final String id,
      required final String title,
      final String? leadingEmoji,
      required final List<Chapter> chapters}) = _$ModuleImpl;
  const _Module._() : super._();

  factory _Module.fromJson(Map<String, dynamic> json) = _$ModuleImpl.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  String? get leadingEmoji;
  @override
  List<Chapter> get chapters;
  @override
  @JsonKey(ignore: true)
  _$$ModuleImplCopyWith<_$ModuleImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
