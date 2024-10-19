class Point {
  final int x;
  final int y;

  const Point(this.x, this.y);

  @override
  String toString() {
    return "x = $x, y = $y";
  }

  Point translate(int dx, int dy) {
    return Point(x + dx, y + dy);
  }
  // void translate(int dx, int dy) {
  //   return Point(x + dx, y + dy);
  // } //why we connot using void in this function translate
}

void main() {
  Point p1 = Point(1, 2);
  print(p1);

  Point p2 = p1.translate(3, 4);
  print(p2);
}
