import 'dart:io';
import 'dart:math';

/*
Write a Dart function that accepts three integers: n, min (optional parameter and
have a default value of 1) and max then return a list of n random numbers between
min and max.
*/

List randomNumbers(int n, [int min = 1, int max = 100]) {
  var random = Random();
  var numbers = [];
  for (var i = 0; i < n; i++) {
    numbers.add(random.nextInt(max - min + 1) + min);
  }
  return numbers;
}

void main() {
  print('Enter the number n:');
  var number = int.tryParse(stdin.readLineSync() ?? "");

  while (number == null || number < 1) {
    print('Bad number! Reenter a number:');
    number = int.tryParse(stdin.readLineSync() ?? "");
  }

  print('Enter the minimum limit (optional - enter to skip):');
  var min = int.tryParse(stdin.readLineSync() ?? "1") ?? 1;

  print('Enter the maximum limit:');
  var max = int.tryParse(stdin.readLineSync() ?? "");

  while (max == null || max < 1) {
    print('Bad number! Reenter a number:');
    max = int.tryParse(stdin.readLineSync() ?? "");
  }

  print(randomNumbers(number, min, max));
}
