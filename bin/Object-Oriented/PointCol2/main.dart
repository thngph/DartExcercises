import 'Point.dart';

void main() {
  Point p = Point(1, 2);
  p.display();
  p.moveForward();
  p.display();
  p.goHome(3, 4);
  p.display();

  Point p1 = PointCol.color(3);
  p1.display();
  p1.moveForward();
  p1.display();
  p1.goHome(3, 4);
  p1.display();
}
