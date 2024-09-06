import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class User with _$User {
  const factory User({
    required String id,
    required String farm_id,
    @JsonKey(includeIfNull: false) String? last_login, // Can be null
    @Default(false) bool is_staff,
    @Default(false) bool is_active,
    required String date_joined,
    required String email,
    @JsonKey(includeIfNull: false) String? first_name, // Can be null
    @JsonKey(includeIfNull: false) String? last_name, // Can be null
    @JsonKey(includeIfNull: false) String? profile_picture, // Can be null
    @Default('') String phone_number, // Default to empty string
    @JsonKey(includeIfNull: false) String? date_of_birth, // Added to match API data
    @Default('') String gender, // Default to empty string
    @Default('') String address,
    @Default('') String city,
    @Default('') String state_province,
    @Default('') String country,
    @Default('') String postal_code,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
