import 'package:freezed_annotation/freezed_annotation.dart';
part 'task_model.freezed.dart';
part 'task_model.g.dart';

@freezed
class Task with _$Task {
  const factory Task({
    required String id,
    required String created_at,
    required String updated_at,
    required String title,
    required String description,
    required String priority,
    required String status,
    required String due_date,
    required String user,
  }) = _Task;

  factory Task.fromJson(Map<String, dynamic> json) => _$TaskFromJson(json);
}


@freezed
class CalendarEvent with _$CalendarEvent {
  const factory CalendarEvent({
    required String id,
    required String created_at,
    required String updated_at,
    required String title,
    required String description,
    required String start_date,
    required String end_date,
    required String all_day,
    required String user,
  }) = _CalendarEvent;

  factory CalendarEvent.fromJson(Map<String, dynamic> json) => _$CalendarEventFromJson(json);
}
