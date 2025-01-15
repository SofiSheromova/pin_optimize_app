import 'dart:collection';
import 'dart:math';

enum QuadrantLocation {
  ne,
  nw,
  sw,
  se;

  bool get isNorth =>
      this == QuadrantLocation.ne || this == QuadrantLocation.nw;

  bool get isSouth =>
      this == QuadrantLocation.se || this == QuadrantLocation.sw;

  bool get isEast => this == QuadrantLocation.ne || this == QuadrantLocation.se;

  bool get isWest => this == QuadrantLocation.nw || this == QuadrantLocation.sw;
}

class QuadTreeNode {
  final Rectangle boundary;
  final List<Point> points;
  final int depth;
  final Map<QuadrantLocation, QuadTreeNode> nodes = {};

  QuadTreeNode(
    this.boundary,
    this.points,
    this.depth,
  );

  List<Point> query(Rectangle rect) {
    final points = <Point>[];
    final queue = Queue<QuadTreeNode>();
    queue.add(this);

    while (queue.isNotEmpty) {
      final node = queue.removeFirst();
      if (!rect.intersects(node.boundary)) {
        continue;
      }

      if (node.nodes.isNotEmpty) {
        queue.addAll(node.nodes.values);
        continue;
      }

      for (final point in node.points) {
        if (rect.containsPoint(point)) {
          points.add(point);
        }
      }
    }

    return points;
  }
}

QuadTreeNode buildQuadTreeIterative({
  required Rectangle boundary,
  required List<Point> points,
  int capacity = 4,
  int maxDepth = 20,
}) {
  final root = QuadTreeNode(boundary, points, 0);
  final queue = Queue<QuadTreeNode>();
  queue.add(root);

  while (queue.isNotEmpty) {
    final node = queue.removeFirst();
    if (node.points.length <= capacity || node.depth >= maxDepth) {
      continue; // Nothing to do - enough space or max depth reached
    }

    final xMid = node.boundary.center.x;
    final yMid = node.boundary.center.y;

    final nwBounds = Rectangle(
      node.boundary.left,
      node.boundary.top,
      node.boundary.width / 2,
      node.boundary.height / 2,
      // quadrant: QuadrantLocation.nw,
    );
    final neBounds = Rectangle(
      xMid,
      node.boundary.top,
      node.boundary.width / 2,
      node.boundary.height / 2,
      // quadrant: QuadrantLocation.ne,
    );
    final swBounds = Rectangle(
      node.boundary.left,
      yMid,
      node.boundary.width / 2,
      node.boundary.height / 2,
      // quadrant: QuadrantLocation.sw,
    );
    final seBounds = Rectangle(
      xMid,
      yMid,
      node.boundary.width / 2,
      node.boundary.height / 2,
      // quadrant: QuadrantLocation.se,
    );

    node.nodes
      ..[QuadrantLocation.nw] = QuadTreeNode(nwBounds, [], node.depth + 1)
      ..[QuadrantLocation.ne] = QuadTreeNode(neBounds, [], node.depth + 1)
      ..[QuadrantLocation.sw] = QuadTreeNode(swBounds, [], node.depth + 1)
      ..[QuadrantLocation.se] = QuadTreeNode(seBounds, [], node.depth + 1);

    for (final point in node.points) {
      for (final entry in node.nodes.entries) {
        final quadrant = entry.key;
        final subNode = entry.value;
        // TODO(!) тут можно ещё немного оптимизировать
        if (_containsInQuadrantRect(subNode.boundary, quadrant, point)) {
          node.nodes[quadrant]!.points.add(point);
        }
      }
    }

    queue.add(node.nodes[QuadrantLocation.nw]!);
    queue.add(node.nodes[QuadrantLocation.ne]!);
    queue.add(node.nodes[QuadrantLocation.sw]!);
    queue.add(node.nodes[QuadrantLocation.se]!);

    node.points.clear();
  }

  return root;
}

bool _containsInQuadrantRect<T extends num>(
  Rectangle<T> boundary,
  QuadrantLocation quadrant,
  Point<T> point,
) {
  final top = boundary.top;
  final left = boundary.left;
  final width = boundary.width;
  final height = boundary.height;

  bool containsHorizontally = false;
  bool containsVertically = false;

  if (quadrant.isNorth) {
    containsVertically = top <= point.y && point.y < top + height;
  } else {
    containsVertically = top <= point.y && point.y <= top + height;
  }

  if (quadrant.isWest) {
    containsHorizontally = left <= point.x && point.x < left + width;
  } else {
    containsHorizontally = left <= point.x && point.x <= left + width;
  }

  return containsVertically && containsHorizontally;
}

extension RectangleX<T extends num> on Rectangle<T> {
  Point get center => Point(left + width / 2.0, top + height / 2.0);
}

// void test() {
//   final points = [
//     Point(0, 0),

//     ///
//     Point(6, 0),
//     Point(5, 1),
//     Point(4, 2),
//     Point(6, 2),

//     ///
//     Point(1, 5),

//     ///
//     Point(4, 4),
//     Point(6, 4),
//     Point(4.5, 4.5),
//     Point(5.5, 4.5),

//     ///
//     Point(7, 7),
//     Point(8, 8),
//   ];

//   final boundary = Rectangle.fromPoints(Point(0, 0), Point(8, 8));

//   final root = buildQuadTreeIterative(
//     boundary: boundary,
//     points: points,
//     // capacity: 2,
//     // maxDepth: 4,
//   );

//   final queryRects = [
//     boundary,
//     Rectangle(0, 0, 4, 4),
//     Rectangle(3, 3, 2, 2),
//     Rectangle(6, 6, 5, 5),
//     Rectangle(10, 0, 5, 5),
//   ];

//   for (final queryRect in queryRects) {
//     final pointsInRect = root.query(queryRect);
//     print(
//         'Rect $queryRect contains ${pointsInRect.length} points.\n$pointsInRect\n');
//   }
// }
