import 'dart:io';

/*Create a class called Point allowing to manipulate a point of a plane (x,y). You will
provide:
A constructor receiving as arguments the coordinates (double) of a point.
A member function move performing a translation defined by its two arguments
(double).
a member function display simply displaying the coordinates of the point.
The coordinates of the point will be private data members. We will write separately:
A source file constituting the declaration of the class.
A small test program (main) declaring a point, displaying it, moving it around
and showing it again.
*/

class Point {
  static int counter = 0;
  double _x = 0;
  double _y = 0;

  Point(double x, double y) {
    this._x = x;
    this._y = y;
    counter++;
  }

  void move(double dx, double dy) {
    _x += dx;
    _y += dy;
  }

  void display({counter = false}) {
    if (counter)
      print('Point($_x, $_y), instance counter[${Point.counter}]');
    else
      print('Point($_x, $_y)');
  }
}
