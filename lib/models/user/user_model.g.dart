// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserImpl _$$UserImplFromJson(Map<String, dynamic> json) => _$UserImpl(
      id: json['id'] as String,
      farm_id: json['farm_id'] as String,
      last_login: json['last_login'] as String?,
      is_staff: json['is_staff'] as bool? ?? false,
      is_active: json['is_active'] as bool? ?? false,
      date_joined: json['date_joined'] as String,
      email: json['email'] as String,
      first_name: json['first_name'] as String?,
      last_name: json['last_name'] as String?,
      profile_picture: json['profile_picture'] as String?,
      phone_number: json['phone_number'] as String? ?? '',
      date_of_birth: json['date_of_birth'] as String?,
      gender: json['gender'] as String? ?? '',
      address: json['address'] as String? ?? '',
      city: json['city'] as String? ?? '',
      state_province: json['state_province'] as String? ?? '',
      country: json['country'] as String? ?? '',
      postal_code: json['postal_code'] as String? ?? '',
    );

Map<String, dynamic> _$$UserImplToJson(_$UserImpl instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'farm_id': instance.farm_id,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('last_login', instance.last_login);
  val['is_staff'] = instance.is_staff;
  val['is_active'] = instance.is_active;
  val['date_joined'] = instance.date_joined;
  val['email'] = instance.email;
  writeNotNull('first_name', instance.first_name);
  writeNotNull('last_name', instance.last_name);
  writeNotNull('profile_picture', instance.profile_picture);
  val['phone_number'] = instance.phone_number;
  writeNotNull('date_of_birth', instance.date_of_birth);
  val['gender'] = instance.gender;
  val['address'] = instance.address;
  val['city'] = instance.city;
  val['state_province'] = instance.state_province;
  val['country'] = instance.country;
  val['postal_code'] = instance.postal_code;
  return val;
}
