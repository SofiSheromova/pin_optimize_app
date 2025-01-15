import 'package:freezed_annotation/freezed_annotation.dart';

import 'attributes/beri_zaryad_point_attributes.dart';

part 'beri_zaryad_point.freezed.dart';
part 'beri_zaryad_point.g.dart';

@freezed
class BeriZaryadPoint with _$BeriZaryadPoint {
  factory BeriZaryadPoint(
    BeriZaryadPointAttributes attributes,
  ) = _BeriZaryadPoint;

  factory BeriZaryadPoint.fromJson(Map<String, dynamic> json) =>
      _$BeriZaryadPointFromJson(json);
}
