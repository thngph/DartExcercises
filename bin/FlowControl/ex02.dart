import 'dart:io';
import 'dart:math';

/*
Write a program to solve quadratic equations (ax^2 + bx + c = 0)
*/

void main() {
  print('Quadratic equation Solver - ax^2 + bx + c = 0');
  print('Enter a, b and c:');
  var a = num.tryParse(stdin.readLineSync() ?? "") ?? 0;
  var b = num.tryParse(stdin.readLineSync() ?? "") ?? 0;
  var c = num.tryParse(stdin.readLineSync() ?? "") ?? 0;

  print('\n${a}x^2 + ${b}x + $c = 0');

  if (a == 0) {
    print('\nNot a quadratic equation');
    if (b == 0) {
      print('And the equation has no solution');
    } else {
      print('The solution is ${-c / b}');
    }
    return;
  }

  num d = b * b - 4 * a * c;
  double p1 = -b / 2.0 / a;
  double p2 = sqrt(d.abs()) / 2.0 / a;

  if (d < 0) {
    print('\nNo real roots');
  } else if (d == 0) {
    print('x = $p1');
  } else {
    print('The solutions are:');
    print('x1 = ${p1 + p2}');
    print('x2 = ${p1 - p2}');
  }
}
