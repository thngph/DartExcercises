import 'dart:io';

/*
Write a Dart recursive function to compute the factorial of a positive integer. f(n) = n!
*/
int factorial(int n) {
  if (n == 0) {
    return 1;
  }
  return n * factorial(n - 1);
}

void main() {
  print('Enter a number:');
  var number = int.tryParse(stdin.readLineSync() ?? "");
  while (number == null || number < 0) {
    print('Bad number! Reenter a number:');
    number = int.tryParse(stdin.readLineSync() ?? "");
  }
  print(factorial(number));
}
