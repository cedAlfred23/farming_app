// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'livestock_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LiveStockImpl _$$LiveStockImplFromJson(Map<String, dynamic> json) =>
    _$LiveStockImpl(
      id: json['id'] as String,
      created_at: json['created_at'] as String,
      updated_at: json['updated_at'] as String,
      animal_type: json['animal_type'] as String,
      breed: json['breed'] as String,
      name: json['name'] as String,
      tag_number: json['tag_number'] as String,
      date_of_birth: json['date_of_birth'] as String,
      gender: json['gender'] as String,
      aquisition_date: json['aquisition_date'] as String,
      acquisition_method: json['acquisition_method'] as String,
      current_weight: json['current_weight'] as String,
      current_age: json['current_age'] as String,
      photo: json['photo'] as String,
      farm: json['farm'] as String,
    );

Map<String, dynamic> _$$LiveStockImplToJson(_$LiveStockImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'created_at': instance.created_at,
      'updated_at': instance.updated_at,
      'animal_type': instance.animal_type,
      'breed': instance.breed,
      'name': instance.name,
      'tag_number': instance.tag_number,
      'date_of_birth': instance.date_of_birth,
      'gender': instance.gender,
      'aquisition_date': instance.aquisition_date,
      'acquisition_method': instance.acquisition_method,
      'current_weight': instance.current_weight,
      'current_age': instance.current_age,
      'photo': instance.photo,
      'farm': instance.farm,
    };

_$HealthRecordImpl _$$HealthRecordImplFromJson(Map<String, dynamic> json) =>
    _$HealthRecordImpl(
      id: json['id'] as String,
      created_at: json['created_at'] as String,
      updated_at: json['updated_at'] as String,
      record_type: json['record_type'] as String,
      date: json['date'] as String,
      description: json['description'] as String,
      diagnosis: json['diagnosis'] as String,
      treatment: json['treatment'] as String,
      medication: json['medication'] as String,
      dosage: json['dosage'] as String,
      veterinarian_name: json['veterinarian_name'] as String,
      follow_up_date: json['follow_up_date'] as String,
      outcome: json['outcome'] as String,
      livestock: json['livestock'] as String,
      administered_by: json['administered_by'] as String,
    );

Map<String, dynamic> _$$HealthRecordImplToJson(_$HealthRecordImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'created_at': instance.created_at,
      'updated_at': instance.updated_at,
      'record_type': instance.record_type,
      'date': instance.date,
      'description': instance.description,
      'diagnosis': instance.diagnosis,
      'treatment': instance.treatment,
      'medication': instance.medication,
      'dosage': instance.dosage,
      'veterinarian_name': instance.veterinarian_name,
      'follow_up_date': instance.follow_up_date,
      'outcome': instance.outcome,
      'livestock': instance.livestock,
      'administered_by': instance.administered_by,
    };
