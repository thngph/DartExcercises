import 'dart:io';

/*
Write a program that determines and prints the number of times the character a
appears in the input entered by the user.
*/

void main() {
  print('Enter a string:');
  var string = stdin.readLineSync() ?? "";
  var count = 0;
  for (var i = 0; i < string.length; i++) {
    if (string[i] == 'a') {
      count++;
    }
  }
  print('The number of times the character a appears in the string is $count');
}
