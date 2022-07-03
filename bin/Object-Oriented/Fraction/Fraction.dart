/*
Define a class for adding, subtracting -, multiplying, dividing and giving the opposite
(-) of fractions (numerator and denominator) using the overload of these operators.

Create a program to test this class.
Note: We're going to overload the operator (-) twice, once as a subtraction and
another time as the opposite.
*/

class Fraction {
  int _numerator;
  int _denominator;

  Fraction(this._numerator, this._denominator);

  int get numerator => _numerator;
  int get denominator => _denominator;

  Fraction operator +(Fraction f) {
    return Fraction(_numerator * f.denominator + f.numerator * _denominator,
        _denominator * f.denominator);
  }

  Fraction operator -(Fraction f) {
    return Fraction(_numerator * f.denominator - f.numerator * _denominator,
        _denominator * f.denominator);
  }

  Fraction operator *(Fraction f) {
    return Fraction(_numerator * f.numerator, _denominator * f.denominator);
  }

  Fraction operator /(Fraction f) {
    return Fraction(_numerator * f.denominator, _denominator * f.numerator);
  }

  Fraction operator -() {
    return Fraction(-_numerator, _denominator);
  }

  @override
  String toString() {
    return '$_numerator/$_denominator';
  }
}
