// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'farm_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FarmImpl _$$FarmImplFromJson(Map<String, dynamic> json) => _$FarmImpl(
      id: json['id'] as String,
      created_at: json['created_at'] as String,
      updated_at: json['updated_at'] as String,
      farm_name: json['farm_name'] as String,
      farm_logo: json['farm_logo'] as String,
      tax_id: json['tax_id'] as String,
      farm_email: json['farm_email'] as String,
      farm_website: json['farm_website'] as String,
      farm_phone_number: json['farm_phone_number'] as String,
      farm_address: json['farm_address'] as String,
      farm_city: json['farm_city'] as String,
      farm_state_province: json['farm_state_province'] as String,
      farm_country: json['farm_country'] as String,
      farm_postal_code: json['farm_postal_code'] as String,
      farmType: json['farmType'] as String,
    );

Map<String, dynamic> _$$FarmImplToJson(_$FarmImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'created_at': instance.created_at,
      'updated_at': instance.updated_at,
      'farm_name': instance.farm_name,
      'farm_logo': instance.farm_logo,
      'tax_id': instance.tax_id,
      'farm_email': instance.farm_email,
      'farm_website': instance.farm_website,
      'farm_phone_number': instance.farm_phone_number,
      'farm_address': instance.farm_address,
      'farm_city': instance.farm_city,
      'farm_state_province': instance.farm_state_province,
      'farm_country': instance.farm_country,
      'farm_postal_code': instance.farm_postal_code,
      'farmType': instance.farmType,
    };
