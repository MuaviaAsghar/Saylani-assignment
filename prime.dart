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

  print("Input: $number");
  print(isPrime
      ? "$number is a prime number."
      : "$number is not a prime number.");
}
