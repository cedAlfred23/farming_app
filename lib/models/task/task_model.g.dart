// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TaskImpl _$$TaskImplFromJson(Map<String, dynamic> json) => _$TaskImpl(
      id: json['id'] as String,
      created_at: json['created_at'] as String,
      updated_at: json['updated_at'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      priority: json['priority'] as String,
      status: json['status'] as String,
      due_date: json['due_date'] as String,
      user: json['user'] as String,
    );

Map<String, dynamic> _$$TaskImplToJson(_$TaskImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'created_at': instance.created_at,
      'updated_at': instance.updated_at,
      'title': instance.title,
      'description': instance.description,
      'priority': instance.priority,
      'status': instance.status,
      'due_date': instance.due_date,
      'user': instance.user,
    };

_$CalendarEventImpl _$$CalendarEventImplFromJson(Map<String, dynamic> json) =>
    _$CalendarEventImpl(
      id: json['id'] as String,
      created_at: json['created_at'] as String,
      updated_at: json['updated_at'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      start_date: json['start_date'] as String,
      end_date: json['end_date'] as String,
      all_day: json['all_day'] as String,
      user: json['user'] as String,
    );

Map<String, dynamic> _$$CalendarEventImplToJson(_$CalendarEventImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'created_at': instance.created_at,
      'updated_at': instance.updated_at,
      'title': instance.title,
      'description': instance.description,
      'start_date': instance.start_date,
      'end_date': instance.end_date,
      'all_day': instance.all_day,
      'user': instance.user,
    };
