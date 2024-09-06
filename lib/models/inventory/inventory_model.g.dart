// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inventory_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$InventoryImpl _$$InventoryImplFromJson(Map<String, dynamic> json) =>
    _$InventoryImpl(
      id: json['id'] as String,
      created_at: json['created_at'] as String,
      updated_at: json['updated_at'] as String,
      name: json['name'] as String,
      description: json['description'] as String,
      price: json['price'] as String,
      quantity: json['quantity'] as String,
      image: json['image'] as String,
      stock: json['stock'] as String,
      category: json['category'] as String,
      created_by: json['created_by'] as String,
    );

Map<String, dynamic> _$$InventoryImplToJson(_$InventoryImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'created_at': instance.created_at,
      'updated_at': instance.updated_at,
      'name': instance.name,
      'description': instance.description,
      'price': instance.price,
      'quantity': instance.quantity,
      'image': instance.image,
      'stock': instance.stock,
      'category': instance.category,
      'created_by': instance.created_by,
    };

_$InventoryCategoryImpl _$$InventoryCategoryImplFromJson(
        Map<String, dynamic> json) =>
    _$InventoryCategoryImpl(
      name: json['name'] as String,
      description: json['description'] as String,
    );

Map<String, dynamic> _$$InventoryCategoryImplToJson(
        _$InventoryCategoryImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
    };
