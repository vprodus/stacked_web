import 'package:freezed_annotation/freezed_annotation.dart';

part 'users.freezed.dart';
part 'users.g.dart';

@freezed
class User with _$User {
  const User._();
  const factory User({
    required String id,
    required String email,
    String? firstName,
    String? lastName,
    String? phoneNumber,
    String? profilePicture,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  factory User.empty() => const User(id: '', email: '');

  String get fullName => [
        if (firstName != null) firstName,
        if (lastName != null) lastName,
      ].join(' ');

  bool get hasProfilePicture =>
      profilePicture != null && profilePicture!.isNotEmpty;

  bool get hasCreatedAccount =>
      firstName != null &&
      firstName!.isNotEmpty &&
      phoneNumber != null &&
      phoneNumber!.isNotEmpty;
}
