import 'Point.dart';

class PointCol extends Point {
  int color = 0;
  PointCol(int x, int y, {this.color = 0}) : super(x, y);
  PointCol.color(this.color) : super(0, 0);
  void printColor() {
    print("color = $color");
  }
}
