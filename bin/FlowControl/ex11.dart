import 'dart:io';

/*
Write a program to check the validity of password input by users.
Validation:
At least 1 letter between [a-z] and 1 letter between [A-Z].
At least 1 number between [0-9].
Minimum length 6 characters.
Maximum length 16 characters.
*/

void main() {
  print('''Enter a password:
[At least 1 letter between [a-z] and 1 letter between [A-Z].
At least 1 number between [0-9].
Minimum length 6 characters.
Maximum length 16 characters.]''');
  var password = stdin.readLineSync() ?? "";
  var valid = false;
  if (password.length < 6 || password.length > 16) {
    print('Password must be between 6 and 16 characters');
  } else {
    var hasLower = false;
    var hasUpper = false;
    var hasNumber = false;
    for (var i = 0; i < password.length; i++) {
      if (password[i].compareTo('a') >= 0 && password[i].compareTo('z') <= 0) {
        hasLower = true;
      } else if (password[i].compareTo('A') >= 0 &&
          password[i].compareTo('Z') <= 0) {
        hasUpper = true;
      } else if (password[i].compareTo('0') >= 0 &&
          password[i].compareTo('9') <= 0) {
        hasNumber = true;
      }
    }
    if (hasLower && hasUpper && hasNumber) {
      valid = true;
    }
  }
  if (valid) {
    print('Password is valid');
  } else {
    print('Password is invalid');
  }
}
