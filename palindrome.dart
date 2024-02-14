// Q8:Implement a function that checks if a given string is a palindrome.
// Example:
// Input: "radar"
// Output: "radar" is a palindrome.
import 'dart:io';

void main() {
  stdout.write("Enter the word you want to check:");
  String word = stdin.readLineSync()!;

  print(isPalindrome(word)
      ? "\"$word\" is a palindrome."
      : "\"$word\" is not a palindrome.");
}

bool isPalindrome(String str) {
  String reversed = str.split('').reversed.join('');
  return str == reversed;
}
