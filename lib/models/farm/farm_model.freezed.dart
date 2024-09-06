// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'farm_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Farm _$FarmFromJson(Map<String, dynamic> json) {
  return _Farm.fromJson(json);
}

/// @nodoc
mixin _$Farm {
  String get id => throw _privateConstructorUsedError;
  String get created_at => throw _privateConstructorUsedError;
  String get updated_at =>
      throw _privateConstructorUsedError; // @Default(false) bool is_staff,
// @Default(false) bool is_active,
  String get farm_name => throw _privateConstructorUsedError;
  String get farm_logo => throw _privateConstructorUsedError;
  String get tax_id => throw _privateConstructorUsedError;
  String get farm_email => throw _privateConstructorUsedError;
  String get farm_website => throw _privateConstructorUsedError;
  String get farm_phone_number => throw _privateConstructorUsedError;
  String get farm_address => throw _privateConstructorUsedError;
  String get farm_city => throw _privateConstructorUsedError;
  String get farm_state_province => throw _privateConstructorUsedError;
  String get farm_country => throw _privateConstructorUsedError;
  String get farm_postal_code => throw _privateConstructorUsedError;
  String get farmType => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FarmCopyWith<Farm> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FarmCopyWith<$Res> {
  factory $FarmCopyWith(Farm value, $Res Function(Farm) then) =
      _$FarmCopyWithImpl<$Res, Farm>;
  @useResult
  $Res call(
      {String id,
      String created_at,
      String updated_at,
      String farm_name,
      String farm_logo,
      String tax_id,
      String farm_email,
      String farm_website,
      String farm_phone_number,
      String farm_address,
      String farm_city,
      String farm_state_province,
      String farm_country,
      String farm_postal_code,
      String farmType});
}

/// @nodoc
class _$FarmCopyWithImpl<$Res, $Val extends Farm>
    implements $FarmCopyWith<$Res> {
  _$FarmCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? created_at = null,
    Object? updated_at = null,
    Object? farm_name = null,
    Object? farm_logo = null,
    Object? tax_id = null,
    Object? farm_email = null,
    Object? farm_website = null,
    Object? farm_phone_number = null,
    Object? farm_address = null,
    Object? farm_city = null,
    Object? farm_state_province = null,
    Object? farm_country = null,
    Object? farm_postal_code = null,
    Object? farmType = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      created_at: null == created_at
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as String,
      updated_at: null == updated_at
          ? _value.updated_at
          : updated_at // ignore: cast_nullable_to_non_nullable
              as String,
      farm_name: null == farm_name
          ? _value.farm_name
          : farm_name // ignore: cast_nullable_to_non_nullable
              as String,
      farm_logo: null == farm_logo
          ? _value.farm_logo
          : farm_logo // ignore: cast_nullable_to_non_nullable
              as String,
      tax_id: null == tax_id
          ? _value.tax_id
          : tax_id // ignore: cast_nullable_to_non_nullable
              as String,
      farm_email: null == farm_email
          ? _value.farm_email
          : farm_email // ignore: cast_nullable_to_non_nullable
              as String,
      farm_website: null == farm_website
          ? _value.farm_website
          : farm_website // ignore: cast_nullable_to_non_nullable
              as String,
      farm_phone_number: null == farm_phone_number
          ? _value.farm_phone_number
          : farm_phone_number // ignore: cast_nullable_to_non_nullable
              as String,
      farm_address: null == farm_address
          ? _value.farm_address
          : farm_address // ignore: cast_nullable_to_non_nullable
              as String,
      farm_city: null == farm_city
          ? _value.farm_city
          : farm_city // ignore: cast_nullable_to_non_nullable
              as String,
      farm_state_province: null == farm_state_province
          ? _value.farm_state_province
          : farm_state_province // ignore: cast_nullable_to_non_nullable
              as String,
      farm_country: null == farm_country
          ? _value.farm_country
          : farm_country // ignore: cast_nullable_to_non_nullable
              as String,
      farm_postal_code: null == farm_postal_code
          ? _value.farm_postal_code
          : farm_postal_code // ignore: cast_nullable_to_non_nullable
              as String,
      farmType: null == farmType
          ? _value.farmType
          : farmType // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FarmImplCopyWith<$Res> implements $FarmCopyWith<$Res> {
  factory _$$FarmImplCopyWith(
          _$FarmImpl value, $Res Function(_$FarmImpl) then) =
      __$$FarmImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String created_at,
      String updated_at,
      String farm_name,
      String farm_logo,
      String tax_id,
      String farm_email,
      String farm_website,
      String farm_phone_number,
      String farm_address,
      String farm_city,
      String farm_state_province,
      String farm_country,
      String farm_postal_code,
      String farmType});
}

/// @nodoc
class __$$FarmImplCopyWithImpl<$Res>
    extends _$FarmCopyWithImpl<$Res, _$FarmImpl>
    implements _$$FarmImplCopyWith<$Res> {
  __$$FarmImplCopyWithImpl(_$FarmImpl _value, $Res Function(_$FarmImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? created_at = null,
    Object? updated_at = null,
    Object? farm_name = null,
    Object? farm_logo = null,
    Object? tax_id = null,
    Object? farm_email = null,
    Object? farm_website = null,
    Object? farm_phone_number = null,
    Object? farm_address = null,
    Object? farm_city = null,
    Object? farm_state_province = null,
    Object? farm_country = null,
    Object? farm_postal_code = null,
    Object? farmType = null,
  }) {
    return _then(_$FarmImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      created_at: null == created_at
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as String,
      updated_at: null == updated_at
          ? _value.updated_at
          : updated_at // ignore: cast_nullable_to_non_nullable
              as String,
      farm_name: null == farm_name
          ? _value.farm_name
          : farm_name // ignore: cast_nullable_to_non_nullable
              as String,
      farm_logo: null == farm_logo
          ? _value.farm_logo
          : farm_logo // ignore: cast_nullable_to_non_nullable
              as String,
      tax_id: null == tax_id
          ? _value.tax_id
          : tax_id // ignore: cast_nullable_to_non_nullable
              as String,
      farm_email: null == farm_email
          ? _value.farm_email
          : farm_email // ignore: cast_nullable_to_non_nullable
              as String,
      farm_website: null == farm_website
          ? _value.farm_website
          : farm_website // ignore: cast_nullable_to_non_nullable
              as String,
      farm_phone_number: null == farm_phone_number
          ? _value.farm_phone_number
          : farm_phone_number // ignore: cast_nullable_to_non_nullable
              as String,
      farm_address: null == farm_address
          ? _value.farm_address
          : farm_address // ignore: cast_nullable_to_non_nullable
              as String,
      farm_city: null == farm_city
          ? _value.farm_city
          : farm_city // ignore: cast_nullable_to_non_nullable
              as String,
      farm_state_province: null == farm_state_province
          ? _value.farm_state_province
          : farm_state_province // ignore: cast_nullable_to_non_nullable
              as String,
      farm_country: null == farm_country
          ? _value.farm_country
          : farm_country // ignore: cast_nullable_to_non_nullable
              as String,
      farm_postal_code: null == farm_postal_code
          ? _value.farm_postal_code
          : farm_postal_code // ignore: cast_nullable_to_non_nullable
              as String,
      farmType: null == farmType
          ? _value.farmType
          : farmType // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FarmImpl implements _Farm {
  const _$FarmImpl(
      {required this.id,
      required this.created_at,
      required this.updated_at,
      required this.farm_name,
      required this.farm_logo,
      required this.tax_id,
      required this.farm_email,
      required this.farm_website,
      required this.farm_phone_number,
      required this.farm_address,
      required this.farm_city,
      required this.farm_state_province,
      required this.farm_country,
      required this.farm_postal_code,
      required this.farmType});

  factory _$FarmImpl.fromJson(Map<String, dynamic> json) =>
      _$$FarmImplFromJson(json);

  @override
  final String id;
  @override
  final String created_at;
  @override
  final String updated_at;
// @Default(false) bool is_staff,
// @Default(false) bool is_active,
  @override
  final String farm_name;
  @override
  final String farm_logo;
  @override
  final String tax_id;
  @override
  final String farm_email;
  @override
  final String farm_website;
  @override
  final String farm_phone_number;
  @override
  final String farm_address;
  @override
  final String farm_city;
  @override
  final String farm_state_province;
  @override
  final String farm_country;
  @override
  final String farm_postal_code;
  @override
  final String farmType;

  @override
  String toString() {
    return 'Farm(id: $id, created_at: $created_at, updated_at: $updated_at, farm_name: $farm_name, farm_logo: $farm_logo, tax_id: $tax_id, farm_email: $farm_email, farm_website: $farm_website, farm_phone_number: $farm_phone_number, farm_address: $farm_address, farm_city: $farm_city, farm_state_province: $farm_state_province, farm_country: $farm_country, farm_postal_code: $farm_postal_code, farmType: $farmType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FarmImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.created_at, created_at) ||
                other.created_at == created_at) &&
            (identical(other.updated_at, updated_at) ||
                other.updated_at == updated_at) &&
            (identical(other.farm_name, farm_name) ||
                other.farm_name == farm_name) &&
            (identical(other.farm_logo, farm_logo) ||
                other.farm_logo == farm_logo) &&
            (identical(other.tax_id, tax_id) || other.tax_id == tax_id) &&
            (identical(other.farm_email, farm_email) ||
                other.farm_email == farm_email) &&
            (identical(other.farm_website, farm_website) ||
                other.farm_website == farm_website) &&
            (identical(other.farm_phone_number, farm_phone_number) ||
                other.farm_phone_number == farm_phone_number) &&
            (identical(other.farm_address, farm_address) ||
                other.farm_address == farm_address) &&
            (identical(other.farm_city, farm_city) ||
                other.farm_city == farm_city) &&
            (identical(other.farm_state_province, farm_state_province) ||
                other.farm_state_province == farm_state_province) &&
            (identical(other.farm_country, farm_country) ||
                other.farm_country == farm_country) &&
            (identical(other.farm_postal_code, farm_postal_code) ||
                other.farm_postal_code == farm_postal_code) &&
            (identical(other.farmType, farmType) ||
                other.farmType == farmType));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      created_at,
      updated_at,
      farm_name,
      farm_logo,
      tax_id,
      farm_email,
      farm_website,
      farm_phone_number,
      farm_address,
      farm_city,
      farm_state_province,
      farm_country,
      farm_postal_code,
      farmType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FarmImplCopyWith<_$FarmImpl> get copyWith =>
      __$$FarmImplCopyWithImpl<_$FarmImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FarmImplToJson(
      this,
    );
  }
}

abstract class _Farm implements Farm {
  const factory _Farm(
      {required final String id,
      required final String created_at,
      required final String updated_at,
      required final String farm_name,
      required final String farm_logo,
      required final String tax_id,
      required final String farm_email,
      required final String farm_website,
      required final String farm_phone_number,
      required final String farm_address,
      required final String farm_city,
      required final String farm_state_province,
      required final String farm_country,
      required final String farm_postal_code,
      required final String farmType}) = _$FarmImpl;

  factory _Farm.fromJson(Map<String, dynamic> json) = _$FarmImpl.fromJson;

  @override
  String get id;
  @override
  String get created_at;
  @override
  String get updated_at;
  @override // @Default(false) bool is_staff,
// @Default(false) bool is_active,
  String get farm_name;
  @override
  String get farm_logo;
  @override
  String get tax_id;
  @override
  String get farm_email;
  @override
  String get farm_website;
  @override
  String get farm_phone_number;
  @override
  String get farm_address;
  @override
  String get farm_city;
  @override
  String get farm_state_province;
  @override
  String get farm_country;
  @override
  String get farm_postal_code;
  @override
  String get farmType;
  @override
  @JsonKey(ignore: true)
  _$$FarmImplCopyWith<_$FarmImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
