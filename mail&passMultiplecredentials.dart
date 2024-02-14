// Q17:Write a program that asks the user for their email and password. You are given a list of predefined user credentials (email and password combinations). If the entered email and password match any of the credentials in the list, print "User login successful."Otherwise, keep
// asking for the email and password until the correct credentials are provided.

import 'dart:io';

void main() {
  List<Map<String, String>> userCredentials = [
    {"email": "user1@mail.com", "password": "pass123"},
    {"email": "user2@mail.com", "password": "password456"},
    {"email": "user3@mail.com", "password": "securePass"},
  ];

  bool loggedIn = false;

  while (!loggedIn) {
    print("Enter your email:");
    String enteredEmail = stdin.readLineSync()!;

    print("Enter your password:");
    String enteredPassword = stdin.readLineSync()!;

    for (Map<String, String> credentials in userCredentials) {
      if (credentials["email"] == enteredEmail &&
          credentials["password"] == enteredPassword) {
        print("User login successful.");
        loggedIn = true;
        break;
      }
    }

    if (!loggedIn) {
      print("Incorrect email or password. Please try again.");
    }
  }
}
