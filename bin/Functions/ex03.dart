import 'dart:io';

/*
Write a Dart function that accepts a String as a parameter and deletes all vowels
from it (A, E, I, O, and U).
*/
var vowels = ['a', 'e', 'i', 'o', 'u'];

String devowelString(String string) {
  var newString = '';
  for (var i = 0; i < string.length; i++) {
    if (!vowels.contains(string[i].toLowerCase())) {
      newString += string[i];
    }
  }
  return newString;
}

void main() {
  print('Enter a string:');
  var string = stdin.readLineSync() ?? "";
  print(devowelString(string));
}
