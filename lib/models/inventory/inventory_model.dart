import 'package:freezed_annotation/freezed_annotation.dart';
part 'inventory_model.freezed.dart';
part 'inventory_model.g.dart';

@freezed
class Inventory with _$Inventory {
  const factory Inventory({
    required String id,
    required String created_at,
    required String updated_at,
    required String name,
    required String description,
    required String price,
    required String quantity,
    required String image,
    required String stock,
    required String category,
    required String created_by,
  }) = _Inventory;

  factory Inventory.fromJson(Map<String, dynamic> json) => _$InventoryFromJson(json);
}

@freezed
class InventoryCategory with _$InventoryCategory {
  const factory InventoryCategory({
    required String name,
    required String description,
  }) = _InventoryCategory;

  factory InventoryCategory.fromJson(Map<String, dynamic> json) => _$InventoryCategoryFromJson(json);
}