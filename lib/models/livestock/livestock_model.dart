import 'package:freezed_annotation/freezed_annotation.dart';
part 'livestock_model.freezed.dart';
part 'livestock_model.g.dart';

@freezed
class LiveStock with _$LiveStock {
  const factory LiveStock({
    required String id,
    required String created_at,
    required String updated_at,
    required String animal_type,
    required String breed,
    required String name,
    required String tag_number,
    required String date_of_birth,
    required String gender,
    required String aquisition_date,
    required String acquisition_method,
    required String current_weight,
    required String current_age,
    required String photo,
    required String farm,
  }) = _LiveStock;

  factory LiveStock.fromJson(Map<String, dynamic> json) => _$LiveStockFromJson(json);
}

@freezed
class HealthRecord with _$HealthRecord {
  const factory HealthRecord({
    required String id,
    required String created_at,
    required String updated_at,
    required String record_type,
    required String date,
    required String description,
    required String diagnosis,
    required String treatment,
    required String medication,
    required String dosage,
    required String veterinarian_name,
    required String follow_up_date,
    required String outcome,
    required String livestock,
    required String administered_by,
  }) = _HealthRecord;

  factory HealthRecord.fromJson(Map<String, dynamic> json) => _$HealthRecordFromJson(json);
}