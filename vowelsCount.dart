// Q19:Write a program that counts the number of vowels in a given string using a for loop and if-else condition.

import 'dart:io';

void main() {
  print("Enter a string:");
  String inputString = stdin.readLineSync()!;

  int vowelCount = countVowels(inputString);

  print("Number of vowels in the string: $vowelCount");
}

int countVowels(String str) {
  int count = 0;

  for (int i = 0; i < str.length; i++) {
    String currentChar = str[i].toLowerCase();

    if (currentChar == 'a' ||
        currentChar == 'e' ||
        currentChar == 'i' ||
        currentChar == 'o' ||
        currentChar == 'u') {
      count++;
    }
  }

  return count;
}
