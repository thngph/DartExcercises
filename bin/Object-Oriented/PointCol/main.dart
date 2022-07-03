import 'PointCol.dart';

void main() {
  PointCol p = PointCol(1, 2);
  p.printColor();

  PointCol p1 = PointCol.color(3);
  p1.printColor();

  PointCol p2 = PointCol(1, 2, color: 4);
  p2.printColor();
}
