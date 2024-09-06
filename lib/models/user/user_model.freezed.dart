// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

User _$UserFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

/// @nodoc
mixin _$User {
  String get id => throw _privateConstructorUsedError;
  String get farm_id => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  String? get last_login => throw _privateConstructorUsedError; // Can be null
  bool get is_staff => throw _privateConstructorUsedError;
  bool get is_active => throw _privateConstructorUsedError;
  String get date_joined => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  String? get first_name => throw _privateConstructorUsedError; // Can be null
  @JsonKey(includeIfNull: false)
  String? get last_name => throw _privateConstructorUsedError; // Can be null
  @JsonKey(includeIfNull: false)
  String? get profile_picture =>
      throw _privateConstructorUsedError; // Can be null
  String get phone_number =>
      throw _privateConstructorUsedError; // Default to empty string
  @JsonKey(includeIfNull: false)
  String? get date_of_birth =>
      throw _privateConstructorUsedError; // Added to match API data
  String get gender =>
      throw _privateConstructorUsedError; // Default to empty string
  String get address => throw _privateConstructorUsedError;
  String get city => throw _privateConstructorUsedError;
  String get state_province => throw _privateConstructorUsedError;
  String get country => throw _privateConstructorUsedError;
  String get postal_code => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res, User>;
  @useResult
  $Res call(
      {String id,
      String farm_id,
      @JsonKey(includeIfNull: false) String? last_login,
      bool is_staff,
      bool is_active,
      String date_joined,
      String email,
      @JsonKey(includeIfNull: false) String? first_name,
      @JsonKey(includeIfNull: false) String? last_name,
      @JsonKey(includeIfNull: false) String? profile_picture,
      String phone_number,
      @JsonKey(includeIfNull: false) String? date_of_birth,
      String gender,
      String address,
      String city,
      String state_province,
      String country,
      String postal_code});
}

/// @nodoc
class _$UserCopyWithImpl<$Res, $Val extends User>
    implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? farm_id = null,
    Object? last_login = freezed,
    Object? is_staff = null,
    Object? is_active = null,
    Object? date_joined = null,
    Object? email = null,
    Object? first_name = freezed,
    Object? last_name = freezed,
    Object? profile_picture = freezed,
    Object? phone_number = null,
    Object? date_of_birth = freezed,
    Object? gender = null,
    Object? address = null,
    Object? city = null,
    Object? state_province = null,
    Object? country = null,
    Object? postal_code = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      farm_id: null == farm_id
          ? _value.farm_id
          : farm_id // ignore: cast_nullable_to_non_nullable
              as String,
      last_login: freezed == last_login
          ? _value.last_login
          : last_login // ignore: cast_nullable_to_non_nullable
              as String?,
      is_staff: null == is_staff
          ? _value.is_staff
          : is_staff // ignore: cast_nullable_to_non_nullable
              as bool,
      is_active: null == is_active
          ? _value.is_active
          : is_active // ignore: cast_nullable_to_non_nullable
              as bool,
      date_joined: null == date_joined
          ? _value.date_joined
          : date_joined // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      first_name: freezed == first_name
          ? _value.first_name
          : first_name // ignore: cast_nullable_to_non_nullable
              as String?,
      last_name: freezed == last_name
          ? _value.last_name
          : last_name // ignore: cast_nullable_to_non_nullable
              as String?,
      profile_picture: freezed == profile_picture
          ? _value.profile_picture
          : profile_picture // ignore: cast_nullable_to_non_nullable
              as String?,
      phone_number: null == phone_number
          ? _value.phone_number
          : phone_number // ignore: cast_nullable_to_non_nullable
              as String,
      date_of_birth: freezed == date_of_birth
          ? _value.date_of_birth
          : date_of_birth // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      state_province: null == state_province
          ? _value.state_province
          : state_province // ignore: cast_nullable_to_non_nullable
              as String,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      postal_code: null == postal_code
          ? _value.postal_code
          : postal_code // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserImplCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$$UserImplCopyWith(
          _$UserImpl value, $Res Function(_$UserImpl) then) =
      __$$UserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String farm_id,
      @JsonKey(includeIfNull: false) String? last_login,
      bool is_staff,
      bool is_active,
      String date_joined,
      String email,
      @JsonKey(includeIfNull: false) String? first_name,
      @JsonKey(includeIfNull: false) String? last_name,
      @JsonKey(includeIfNull: false) String? profile_picture,
      String phone_number,
      @JsonKey(includeIfNull: false) String? date_of_birth,
      String gender,
      String address,
      String city,
      String state_province,
      String country,
      String postal_code});
}

/// @nodoc
class __$$UserImplCopyWithImpl<$Res>
    extends _$UserCopyWithImpl<$Res, _$UserImpl>
    implements _$$UserImplCopyWith<$Res> {
  __$$UserImplCopyWithImpl(_$UserImpl _value, $Res Function(_$UserImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? farm_id = null,
    Object? last_login = freezed,
    Object? is_staff = null,
    Object? is_active = null,
    Object? date_joined = null,
    Object? email = null,
    Object? first_name = freezed,
    Object? last_name = freezed,
    Object? profile_picture = freezed,
    Object? phone_number = null,
    Object? date_of_birth = freezed,
    Object? gender = null,
    Object? address = null,
    Object? city = null,
    Object? state_province = null,
    Object? country = null,
    Object? postal_code = null,
  }) {
    return _then(_$UserImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      farm_id: null == farm_id
          ? _value.farm_id
          : farm_id // ignore: cast_nullable_to_non_nullable
              as String,
      last_login: freezed == last_login
          ? _value.last_login
          : last_login // ignore: cast_nullable_to_non_nullable
              as String?,
      is_staff: null == is_staff
          ? _value.is_staff
          : is_staff // ignore: cast_nullable_to_non_nullable
              as bool,
      is_active: null == is_active
          ? _value.is_active
          : is_active // ignore: cast_nullable_to_non_nullable
              as bool,
      date_joined: null == date_joined
          ? _value.date_joined
          : date_joined // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      first_name: freezed == first_name
          ? _value.first_name
          : first_name // ignore: cast_nullable_to_non_nullable
              as String?,
      last_name: freezed == last_name
          ? _value.last_name
          : last_name // ignore: cast_nullable_to_non_nullable
              as String?,
      profile_picture: freezed == profile_picture
          ? _value.profile_picture
          : profile_picture // ignore: cast_nullable_to_non_nullable
              as String?,
      phone_number: null == phone_number
          ? _value.phone_number
          : phone_number // ignore: cast_nullable_to_non_nullable
              as String,
      date_of_birth: freezed == date_of_birth
          ? _value.date_of_birth
          : date_of_birth // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      state_province: null == state_province
          ? _value.state_province
          : state_province // ignore: cast_nullable_to_non_nullable
              as String,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      postal_code: null == postal_code
          ? _value.postal_code
          : postal_code // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserImpl implements _User {
  const _$UserImpl(
      {required this.id,
      required this.farm_id,
      @JsonKey(includeIfNull: false) this.last_login,
      this.is_staff = false,
      this.is_active = false,
      required this.date_joined,
      required this.email,
      @JsonKey(includeIfNull: false) this.first_name,
      @JsonKey(includeIfNull: false) this.last_name,
      @JsonKey(includeIfNull: false) this.profile_picture,
      this.phone_number = '',
      @JsonKey(includeIfNull: false) this.date_of_birth,
      this.gender = '',
      this.address = '',
      this.city = '',
      this.state_province = '',
      this.country = '',
      this.postal_code = ''});

  factory _$UserImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserImplFromJson(json);

  @override
  final String id;
  @override
  final String farm_id;
  @override
  @JsonKey(includeIfNull: false)
  final String? last_login;
// Can be null
  @override
  @JsonKey()
  final bool is_staff;
  @override
  @JsonKey()
  final bool is_active;
  @override
  final String date_joined;
  @override
  final String email;
  @override
  @JsonKey(includeIfNull: false)
  final String? first_name;
// Can be null
  @override
  @JsonKey(includeIfNull: false)
  final String? last_name;
// Can be null
  @override
  @JsonKey(includeIfNull: false)
  final String? profile_picture;
// Can be null
  @override
  @JsonKey()
  final String phone_number;
// Default to empty string
  @override
  @JsonKey(includeIfNull: false)
  final String? date_of_birth;
// Added to match API data
  @override
  @JsonKey()
  final String gender;
// Default to empty string
  @override
  @JsonKey()
  final String address;
  @override
  @JsonKey()
  final String city;
  @override
  @JsonKey()
  final String state_province;
  @override
  @JsonKey()
  final String country;
  @override
  @JsonKey()
  final String postal_code;

  @override
  String toString() {
    return 'User(id: $id, farm_id: $farm_id, last_login: $last_login, is_staff: $is_staff, is_active: $is_active, date_joined: $date_joined, email: $email, first_name: $first_name, last_name: $last_name, profile_picture: $profile_picture, phone_number: $phone_number, date_of_birth: $date_of_birth, gender: $gender, address: $address, city: $city, state_province: $state_province, country: $country, postal_code: $postal_code)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.farm_id, farm_id) || other.farm_id == farm_id) &&
            (identical(other.last_login, last_login) ||
                other.last_login == last_login) &&
            (identical(other.is_staff, is_staff) ||
                other.is_staff == is_staff) &&
            (identical(other.is_active, is_active) ||
                other.is_active == is_active) &&
            (identical(other.date_joined, date_joined) ||
                other.date_joined == date_joined) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.first_name, first_name) ||
                other.first_name == first_name) &&
            (identical(other.last_name, last_name) ||
                other.last_name == last_name) &&
            (identical(other.profile_picture, profile_picture) ||
                other.profile_picture == profile_picture) &&
            (identical(other.phone_number, phone_number) ||
                other.phone_number == phone_number) &&
            (identical(other.date_of_birth, date_of_birth) ||
                other.date_of_birth == date_of_birth) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.state_province, state_province) ||
                other.state_province == state_province) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.postal_code, postal_code) ||
                other.postal_code == postal_code));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      farm_id,
      last_login,
      is_staff,
      is_active,
      date_joined,
      email,
      first_name,
      last_name,
      profile_picture,
      phone_number,
      date_of_birth,
      gender,
      address,
      city,
      state_province,
      country,
      postal_code);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      __$$UserImplCopyWithImpl<_$UserImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserImplToJson(
      this,
    );
  }
}

abstract class _User implements User {
  const factory _User(
      {required final String id,
      required final String farm_id,
      @JsonKey(includeIfNull: false) final String? last_login,
      final bool is_staff,
      final bool is_active,
      required final String date_joined,
      required final String email,
      @JsonKey(includeIfNull: false) final String? first_name,
      @JsonKey(includeIfNull: false) final String? last_name,
      @JsonKey(includeIfNull: false) final String? profile_picture,
      final String phone_number,
      @JsonKey(includeIfNull: false) final String? date_of_birth,
      final String gender,
      final String address,
      final String city,
      final String state_province,
      final String country,
      final String postal_code}) = _$UserImpl;

  factory _User.fromJson(Map<String, dynamic> json) = _$UserImpl.fromJson;

  @override
  String get id;
  @override
  String get farm_id;
  @override
  @JsonKey(includeIfNull: false)
  String? get last_login;
  @override // Can be null
  bool get is_staff;
  @override
  bool get is_active;
  @override
  String get date_joined;
  @override
  String get email;
  @override
  @JsonKey(includeIfNull: false)
  String? get first_name;
  @override // Can be null
  @JsonKey(includeIfNull: false)
  String? get last_name;
  @override // Can be null
  @JsonKey(includeIfNull: false)
  String? get profile_picture;
  @override // Can be null
  String get phone_number;
  @override // Default to empty string
  @JsonKey(includeIfNull: false)
  String? get date_of_birth;
  @override // Added to match API data
  String get gender;
  @override // Default to empty string
  String get address;
  @override
  String get city;
  @override
  String get state_province;
  @override
  String get country;
  @override
  String get postal_code;
  @override
  @JsonKey(ignore: true)
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
