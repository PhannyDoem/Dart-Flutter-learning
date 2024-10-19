class Point {
  int x;
  int y;

  Point(this.x, this.y);

  @override
  String toString() {
    return "x = $x, y = $y";
  }

  void translate(int dx, int dy) {
    x += dx;
    y += dy;
  }
}

void main() {
  Point p1 = Point(1, 2);
  print(p1);

  Point p2 = Point(3, 4);
  p2.translate(5, 6);
  print(p2);
}
