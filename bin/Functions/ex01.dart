import 'dart:io';

/*
Write a Dart function that checks whether a passed string is palindrome or not? A
palindrome is a word, phrase, or sequence that reads the same backward as
forward, e.g., madam or nursesrun
*/

bool isPalindrome(String string) {
  var reversedString = string.split('').reversed.join('');
  return string == reversedString;
}

// Alternative
bool palindrome(String str) {
  for (int i = 0; i < str.length ~/ 2; i++)
    if (str[i] != str[str.length - i - 1]) return false;
  return true;
}

void main() {
  print('Enter a string:');
  var string = stdin.readLineSync() ?? "";

  if (isPalindrome(string)) {
    print('The string is palindrome');
  } else {
    print('The string is NOT palindrome');
  }
}
