import 'package:freezed_annotation/freezed_annotation.dart';

part 'farm_model.freezed.dart';
part 'farm_model.g.dart';

@freezed
class Farm with _$Farm {
  const factory Farm({
    required String id,
    required String created_at,
    required String updated_at,
    // @Default(false) bool is_staff,
    // @Default(false) bool is_active,
    required String farm_name,
    required String farm_logo,
    required String tax_id,
    required String farm_email,
    required String farm_website,
    required String farm_phone_number,
    required String farm_address,
    required String farm_city,
    required String farm_state_province,
    required String farm_country,
    required String farm_postal_code,
    required String farmType, // Renamed from Farm to farmType
  }) = _Farm;

  factory Farm.fromJson(Map<String, dynamic> json) => _$FarmFromJson(json);
}