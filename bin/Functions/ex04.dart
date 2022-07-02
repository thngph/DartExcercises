import 'dart:io';

/*
Write a Dart function which will take an array of numbers stored and find the second
lowest and second greatest numbers, respectively.
Sample array: [7, 2, 10, 41, 35]
Expected Output: 7,35
*/
List secondLowestNGreatest(List numbers) {
  var sortedNumbers = numbers.toList();
  sortedNumbers.sort();

  return [sortedNumbers[1], sortedNumbers[sortedNumbers.length - 2]];
}

void main() {
  print('Enter a list of numbers:');
  var list = stdin.readLineSync() ?? "";
  var numbers = list.split(' ').map((e) => int.tryParse(e)).toList();

  print(secondLowestNGreatest(numbers));
}
