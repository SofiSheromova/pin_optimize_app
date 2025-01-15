// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'beri_zaryad_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BeriZaryadResponse _$BeriZaryadResponseFromJson(Map<String, dynamic> json) {
  return _BeriZaryadResponse.fromJson(json);
}

/// @nodoc
mixin _$BeriZaryadResponse {
  @JsonKey(name: 'data')
  List<BeriZaryadPoint> get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BeriZaryadResponseCopyWith<BeriZaryadResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BeriZaryadResponseCopyWith<$Res> {
  factory $BeriZaryadResponseCopyWith(
          BeriZaryadResponse value, $Res Function(BeriZaryadResponse) then) =
      _$BeriZaryadResponseCopyWithImpl<$Res, BeriZaryadResponse>;
  @useResult
  $Res call({@JsonKey(name: 'data') List<BeriZaryadPoint> data});
}

/// @nodoc
class _$BeriZaryadResponseCopyWithImpl<$Res, $Val extends BeriZaryadResponse>
    implements $BeriZaryadResponseCopyWith<$Res> {
  _$BeriZaryadResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<BeriZaryadPoint>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BeriZaryadResponseImplCopyWith<$Res>
    implements $BeriZaryadResponseCopyWith<$Res> {
  factory _$$BeriZaryadResponseImplCopyWith(_$BeriZaryadResponseImpl value,
          $Res Function(_$BeriZaryadResponseImpl) then) =
      __$$BeriZaryadResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'data') List<BeriZaryadPoint> data});
}

/// @nodoc
class __$$BeriZaryadResponseImplCopyWithImpl<$Res>
    extends _$BeriZaryadResponseCopyWithImpl<$Res, _$BeriZaryadResponseImpl>
    implements _$$BeriZaryadResponseImplCopyWith<$Res> {
  __$$BeriZaryadResponseImplCopyWithImpl(_$BeriZaryadResponseImpl _value,
      $Res Function(_$BeriZaryadResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$BeriZaryadResponseImpl(
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<BeriZaryadPoint>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BeriZaryadResponseImpl implements _BeriZaryadResponse {
  _$BeriZaryadResponseImpl(@JsonKey(name: 'data') this.data);

  factory _$BeriZaryadResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$BeriZaryadResponseImplFromJson(json);

  @override
  @JsonKey(name: 'data')
  final List<BeriZaryadPoint> data;

  @override
  String toString() {
    return 'BeriZaryadResponse(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BeriZaryadResponseImpl &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BeriZaryadResponseImplCopyWith<_$BeriZaryadResponseImpl> get copyWith =>
      __$$BeriZaryadResponseImplCopyWithImpl<_$BeriZaryadResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BeriZaryadResponseImplToJson(
      this,
    );
  }
}

abstract class _BeriZaryadResponse implements BeriZaryadResponse {
  factory _BeriZaryadResponse(
          @JsonKey(name: 'data') final List<BeriZaryadPoint> data) =
      _$BeriZaryadResponseImpl;

  factory _BeriZaryadResponse.fromJson(Map<String, dynamic> json) =
      _$BeriZaryadResponseImpl.fromJson;

  @override
  @JsonKey(name: 'data')
  List<BeriZaryadPoint> get data;
  @override
  @JsonKey(ignore: true)
  _$$BeriZaryadResponseImplCopyWith<_$BeriZaryadResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
