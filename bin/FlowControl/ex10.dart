import 'dart:io';

/*
Write a program to find the first 80 numbers starting from 100 where each digit of a
number is an even number (ex: 242). The numbers obtained should be printed on a
list.
*/

void main() {
  int number = 100;
  int count = 0;
  var numList = [];

  while (count < 80) {
    var string = number.toString();
    var even = true;
    for (var i = 0; i < string.length; i++) {
      if (int.parse(string[i]) % 2 != 0) {
        even = false;
        break;
      }
    }
    if (even) {
      numList.add(number);
      count++;
    }
    number++;
  }

  print(numList);
}
