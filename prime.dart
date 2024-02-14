// Q3: Implement a code that checks whether a given number is prime or not.
// Example:
// Input: 17
// Output: 17 is a prime number.
import 'dart:io';

void main() {
  stdout.write("Enter the number you want to check: ");
  int number = int.parse(stdin.readLineSync()!);
  bool isPrime = true;

  for (int i = 2; i <= number ~/ 2; ++i) {
    if (number % i == 0) {
      isPrime = false;
      break;
    }
  }

  print(isPrime
      ? "$number is a prime number."
      : "$number is not a prime number.");
}
