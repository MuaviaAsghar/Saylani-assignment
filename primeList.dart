// Write a program that takes a list of integers as input and returns a new
// list containing only the prime numbers from the original list. Implement
// the solution using a for loop and logical operations.

import 'dart:io';

void main() {
  print("Enter a list of integers separated by space:");
  List<int> originalList = readIntListFromInput();

  List<int> primeNumbersList = filterPrimeNumbers(originalList);

  print("Prime numbers in the list: $primeNumbersList");
}

List<int> filterPrimeNumbers(List<int> numbers) {
  List<int> primeNumbers = [];

  for (int number in numbers) {
    if (isPrime(number)) {
      primeNumbers.add(number);
    }
  }

  return primeNumbers;
}

bool isPrime(int num) {
  if (num < 2) {
    return false;
  }

  for (int i = 2; i <= num ~/ 2; i++) {
    if (num % i == 0) {
      return false;
    }
  }

  return true;
}

List<int> readIntListFromInput() {
  String input = stdin.readLineSync()!;
  List<String> numberStrings = input.split(' ');

  List<int> numbers = [];

  for (String numStr in numberStrings) {
    numbers.add(int.parse(numStr));
  }

  return numbers;
}
