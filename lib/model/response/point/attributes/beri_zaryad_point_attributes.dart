// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'beri_zaryad_point_attributes.freezed.dart';
part 'beri_zaryad_point_attributes.g.dart';

@freezed
class BeriZaryadPointAttributes with _$BeriZaryadPointAttributes {
  const factory BeriZaryadPointAttributes({
    @JsonKey(
      name: 'id',
    )
    required int id,
    @JsonKey(
      name: 'latitude',
    )
    required double latitude,
    @JsonKey(
      name: 'longitude',
    )
    required double longitude,
  }) = _BeriZaryadPointAttributes;

  factory BeriZaryadPointAttributes.fromJson(Map<String, dynamic> json) =>
      _$BeriZaryadPointAttributesFromJson(json);
}
