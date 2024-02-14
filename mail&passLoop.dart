// Q16:Write a program that asks the user for their email and password. If the
// email and password match a predefined set of credentials, print "User
// login successful." Otherwise, keep asking for the email and password
// until the correct credentials are provided.

import 'dart:io';

void main() {
  String correctEmail = "user@mail.com";
  String correctPassword = "123456789";

  bool loggedIn = false;

  while (!loggedIn) {
    print("Enter your email:");
    String enteredEmail = stdin.readLineSync()!;

    print("Enter your password:");
    String enteredPassword = stdin.readLineSync()!;

    if (enteredEmail == correctEmail && enteredPassword == correctPassword) {
      print("User login successful.");
      loggedIn = true;
    } else {
      print("Incorrect email or password. Please try again.");
    }
  }
}
