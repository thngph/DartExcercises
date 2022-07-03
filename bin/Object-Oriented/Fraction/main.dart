import 'Fraction.dart';

void main() {
  Fraction f1 = Fraction(1, 2);
  Fraction f2 = Fraction(1, 3);

  print('f1 = $f1');
  print('f2 = $f2');

  print('f1 + f2 = ${f1 + f2}');
  print('f1 - f2 = ${f1 - f2}');
  print('f1 * f2 = ${f1 * f2}');
  print('f1 / f2 = ${f1 / f2}');
  print('-f1 = ${-f1}');
}
