// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'beri_zaryad_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BeriZaryadResponseImpl _$$BeriZaryadResponseImplFromJson(Map json) =>
    _$BeriZaryadResponseImpl(
      (json['data'] as List<dynamic>)
          .map((e) =>
              BeriZaryadPoint.fromJson(Map<String, dynamic>.from(e as Map)))
          .toList(),
    );

Map<String, dynamic> _$$BeriZaryadResponseImplToJson(
        _$BeriZaryadResponseImpl instance) =>
    <String, dynamic>{
      'data': instance.data.map((e) => e.toJson()).toList(),
    };
