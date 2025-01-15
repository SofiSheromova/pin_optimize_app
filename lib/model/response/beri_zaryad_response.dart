// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

import 'point/beri_zaryad_point.dart';

part 'beri_zaryad_response.freezed.dart';

part 'beri_zaryad_response.g.dart';

@freezed
class BeriZaryadResponse with _$BeriZaryadResponse {
  factory BeriZaryadResponse(
    @JsonKey(name: 'data') List<BeriZaryadPoint> data,
  ) = _BeriZaryadResponse;

  factory BeriZaryadResponse.fromJson(Map<String, dynamic> json) =>
      _$BeriZaryadResponseFromJson(json);
}
