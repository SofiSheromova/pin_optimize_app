// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'beri_zaryad_point.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BeriZaryadPoint _$BeriZaryadPointFromJson(Map<String, dynamic> json) {
  return _BeriZaryadPoint.fromJson(json);
}

/// @nodoc
mixin _$BeriZaryadPoint {
  BeriZaryadPointAttributes get attributes =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BeriZaryadPointCopyWith<BeriZaryadPoint> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BeriZaryadPointCopyWith<$Res> {
  factory $BeriZaryadPointCopyWith(
          BeriZaryadPoint value, $Res Function(BeriZaryadPoint) then) =
      _$BeriZaryadPointCopyWithImpl<$Res, BeriZaryadPoint>;
  @useResult
  $Res call({BeriZaryadPointAttributes attributes});

  $BeriZaryadPointAttributesCopyWith<$Res> get attributes;
}

/// @nodoc
class _$BeriZaryadPointCopyWithImpl<$Res, $Val extends BeriZaryadPoint>
    implements $BeriZaryadPointCopyWith<$Res> {
  _$BeriZaryadPointCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? attributes = null,
  }) {
    return _then(_value.copyWith(
      attributes: null == attributes
          ? _value.attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as BeriZaryadPointAttributes,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BeriZaryadPointAttributesCopyWith<$Res> get attributes {
    return $BeriZaryadPointAttributesCopyWith<$Res>(_value.attributes, (value) {
      return _then(_value.copyWith(attributes: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BeriZaryadPointImplCopyWith<$Res>
    implements $BeriZaryadPointCopyWith<$Res> {
  factory _$$BeriZaryadPointImplCopyWith(_$BeriZaryadPointImpl value,
          $Res Function(_$BeriZaryadPointImpl) then) =
      __$$BeriZaryadPointImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({BeriZaryadPointAttributes attributes});

  @override
  $BeriZaryadPointAttributesCopyWith<$Res> get attributes;
}

/// @nodoc
class __$$BeriZaryadPointImplCopyWithImpl<$Res>
    extends _$BeriZaryadPointCopyWithImpl<$Res, _$BeriZaryadPointImpl>
    implements _$$BeriZaryadPointImplCopyWith<$Res> {
  __$$BeriZaryadPointImplCopyWithImpl(
      _$BeriZaryadPointImpl _value, $Res Function(_$BeriZaryadPointImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? attributes = null,
  }) {
    return _then(_$BeriZaryadPointImpl(
      null == attributes
          ? _value.attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as BeriZaryadPointAttributes,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BeriZaryadPointImpl implements _BeriZaryadPoint {
  _$BeriZaryadPointImpl(this.attributes);

  factory _$BeriZaryadPointImpl.fromJson(Map<String, dynamic> json) =>
      _$$BeriZaryadPointImplFromJson(json);

  @override
  final BeriZaryadPointAttributes attributes;

  @override
  String toString() {
    return 'BeriZaryadPoint(attributes: $attributes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BeriZaryadPointImpl &&
            (identical(other.attributes, attributes) ||
                other.attributes == attributes));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, attributes);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BeriZaryadPointImplCopyWith<_$BeriZaryadPointImpl> get copyWith =>
      __$$BeriZaryadPointImplCopyWithImpl<_$BeriZaryadPointImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BeriZaryadPointImplToJson(
      this,
    );
  }
}

abstract class _BeriZaryadPoint implements BeriZaryadPoint {
  factory _BeriZaryadPoint(final BeriZaryadPointAttributes attributes) =
      _$BeriZaryadPointImpl;

  factory _BeriZaryadPoint.fromJson(Map<String, dynamic> json) =
      _$BeriZaryadPointImpl.fromJson;

  @override
  BeriZaryadPointAttributes get attributes;
  @override
  @JsonKey(ignore: true)
  _$$BeriZaryadPointImplCopyWith<_$BeriZaryadPointImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
