import 'dart:io';

/*
Write a Dart function that accepts a string as a parameter and find the longest word
within the string.
Example string: 'we are the new generation’
Expected Output: 'generation’
Assume one space between words in the passed string.
*/
String longestWord(String string) {
  var words = string.split(' ');
  var longestWord = '';
  for (var i = 0; i < words.length; i++) {
    if (words[i].length > longestWord.length) {
      longestWord = words[i];
    }
  }
  return longestWord;
}

void main() {
  print('Enter a string:');
  var string = stdin.readLineSync() ?? "";
  print(longestWord(string));
}
