class Point {
  final double x;
  final double y;

  const Point(this.x, this.y);

  @override
  String toString() {
    return "x = $x, y = $y";
  }

  Point translate(double dx, double dy) {
    return Point(x + dx, y + dy);
  }
}

class Shape {
  final Point leftBottom;
  final double width;
  final double height;
  final String? backgroundColor;

  Shape(this.height, this.width, this.leftBottom, this.backgroundColor);

  Point get rightTop {
    return leftBottom.translate(width, height);
  }

  @override
  String toString() {
    return "Shape: $leftBottom, width = $width, height = $height, backgroundColor = $backgroundColor";
  }
}

void main() {
  Point p1 = Point(1, 2);
  print(p1);

  Point p2 = p1.translate(3, 4);
  print(p2);

  Shape s1 = Shape(2, 2, p1, "Black");
  print(s1);

  Shape s2 = Shape(2, 2, p2, "Blue");
  print(s2);

  print("Right Top Point = ${s2.rightTop}");
  print("Left Bottom Point = ${s2.leftBottom}");
}
