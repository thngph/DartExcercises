import 'Point.dart';

void main() {
  Point p = Point(2.0, 3.0);
  print('Initial point:');
  p.display();
  print('Moving point 1 unit up, 1 unit to the right:');
  p.move(1.0, 1.0);
  p.display();

  print('Initial another point, with instance counter:');
  Point p2 = Point(2.0, 3.0);
  p2.display(counter: true);
}
