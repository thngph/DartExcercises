/*
The class Vector3D is defined as follows:

class Vector3D {
double _x, _y, _z;
Vector3D(this._x, this._y, this._z);
}

Add a new named constructor "same" that has only one argument and initialize
the three variables with it.
Add a member function "coincide" that checks if two vectors have the same
components.
A small test program (main)
*/

class Vector3D {
  double _x, _y, _z;
  Vector3D(this._x, this._y, this._z);
  Vector3D.same(c) : this(c, c, c);

  bool coincide(Vector3D v) {
    return _x == v._x && _y == v._y && _z == v._z;
  }
}
