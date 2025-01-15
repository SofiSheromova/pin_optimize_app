import 'dart:convert';
import 'dart:io';
import 'dart:math';

import 'package:pin_optimize_app/model/response/beri_zaryad_response.dart';
import 'package:pin_optimize_app/pin_optimize_app.dart';

Future<void> main() async {
  final response = await readJsonFile('assets/beri_zaryad_msk.json');
  final points = response.data
      .map(
        (e) => Point(e.attributes.longitude, e.attributes.latitude),
      )
      .toList();
  print('points.length: ${points.length}');

  final xValues = points.map((point) => point.x);
  final yValues = points.map((point) => point.y);
  final topLeft = Point(
    xValues.reduce(min),
    yValues.reduce(min),
  );
  final bottomRight = Point(
    xValues.reduce(max),
    yValues.reduce(max),
  );
  print('topLeft: $topLeft');
  print('bottomRight: $bottomRight');

  final boundary = Rectangle.fromPoints(topLeft, bottomRight);
  final width = boundary.width;
  final height = boundary.height;

  final root = buildQuadTreeIterative(
    boundary: boundary,
    points: points,
    // capacity: 2,
    // maxDepth: 4,
  );

  final queryRects = [
    boundary,
    Rectangle(topLeft.x, topLeft.y, width / 2, height / 2),
    Rectangle(topLeft.x + width / 2, topLeft.y, width / 2, height / 2),
    Rectangle(topLeft.x, topLeft.y + height / 2, width / 2, height / 2),
    Rectangle(
        topLeft.x + width / 2, topLeft.y + height / 2, width / 2, height / 2),
  ];

  for (final queryRect in queryRects) {
    final pointsInRect = root.query(queryRect);
    print('Rect $queryRect contains ${pointsInRect.length} points.\n');
  }
}

Future<BeriZaryadResponse> readJsonFile(String filePath) async {
  var input = await File(filePath).readAsString();
  return BeriZaryadResponse.fromJson(jsonDecode(input));
}
