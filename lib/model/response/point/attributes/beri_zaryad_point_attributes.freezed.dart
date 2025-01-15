// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'beri_zaryad_point_attributes.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BeriZaryadPointAttributes _$BeriZaryadPointAttributesFromJson(
    Map<String, dynamic> json) {
  return _BeriZaryadPointAttributes.fromJson(json);
}

/// @nodoc
mixin _$BeriZaryadPointAttributes {
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'latitude')
  double get latitude => throw _privateConstructorUsedError;
  @JsonKey(name: 'longitude')
  double get longitude => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BeriZaryadPointAttributesCopyWith<BeriZaryadPointAttributes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BeriZaryadPointAttributesCopyWith<$Res> {
  factory $BeriZaryadPointAttributesCopyWith(BeriZaryadPointAttributes value,
          $Res Function(BeriZaryadPointAttributes) then) =
      _$BeriZaryadPointAttributesCopyWithImpl<$Res, BeriZaryadPointAttributes>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'latitude') double latitude,
      @JsonKey(name: 'longitude') double longitude});
}

/// @nodoc
class _$BeriZaryadPointAttributesCopyWithImpl<$Res,
        $Val extends BeriZaryadPointAttributes>
    implements $BeriZaryadPointAttributesCopyWith<$Res> {
  _$BeriZaryadPointAttributesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? latitude = null,
    Object? longitude = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BeriZaryadPointAttributesImplCopyWith<$Res>
    implements $BeriZaryadPointAttributesCopyWith<$Res> {
  factory _$$BeriZaryadPointAttributesImplCopyWith(
          _$BeriZaryadPointAttributesImpl value,
          $Res Function(_$BeriZaryadPointAttributesImpl) then) =
      __$$BeriZaryadPointAttributesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'latitude') double latitude,
      @JsonKey(name: 'longitude') double longitude});
}

/// @nodoc
class __$$BeriZaryadPointAttributesImplCopyWithImpl<$Res>
    extends _$BeriZaryadPointAttributesCopyWithImpl<$Res,
        _$BeriZaryadPointAttributesImpl>
    implements _$$BeriZaryadPointAttributesImplCopyWith<$Res> {
  __$$BeriZaryadPointAttributesImplCopyWithImpl(
      _$BeriZaryadPointAttributesImpl _value,
      $Res Function(_$BeriZaryadPointAttributesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? latitude = null,
    Object? longitude = null,
  }) {
    return _then(_$BeriZaryadPointAttributesImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BeriZaryadPointAttributesImpl implements _BeriZaryadPointAttributes {
  const _$BeriZaryadPointAttributesImpl(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'latitude') required this.latitude,
      @JsonKey(name: 'longitude') required this.longitude});

  factory _$BeriZaryadPointAttributesImpl.fromJson(Map<String, dynamic> json) =>
      _$$BeriZaryadPointAttributesImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'latitude')
  final double latitude;
  @override
  @JsonKey(name: 'longitude')
  final double longitude;

  @override
  String toString() {
    return 'BeriZaryadPointAttributes(id: $id, latitude: $latitude, longitude: $longitude)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BeriZaryadPointAttributesImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, latitude, longitude);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BeriZaryadPointAttributesImplCopyWith<_$BeriZaryadPointAttributesImpl>
      get copyWith => __$$BeriZaryadPointAttributesImplCopyWithImpl<
          _$BeriZaryadPointAttributesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BeriZaryadPointAttributesImplToJson(
      this,
    );
  }
}

abstract class _BeriZaryadPointAttributes implements BeriZaryadPointAttributes {
  const factory _BeriZaryadPointAttributes(
          {@JsonKey(name: 'id') required final int id,
          @JsonKey(name: 'latitude') required final double latitude,
          @JsonKey(name: 'longitude') required final double longitude}) =
      _$BeriZaryadPointAttributesImpl;

  factory _BeriZaryadPointAttributes.fromJson(Map<String, dynamic> json) =
      _$BeriZaryadPointAttributesImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int get id;
  @override
  @JsonKey(name: 'latitude')
  double get latitude;
  @override
  @JsonKey(name: 'longitude')
  double get longitude;
  @override
  @JsonKey(ignore: true)
  _$$BeriZaryadPointAttributesImplCopyWith<_$BeriZaryadPointAttributesImpl>
      get copyWith => throw _privateConstructorUsedError;
}
