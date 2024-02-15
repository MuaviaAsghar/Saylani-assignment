// Q21:Write a program that calculates the sum of the squares of all odd numbers in a given list using a for loop and if-else condition.

import 'dart:io';

void main() {
  print("Enter a list of numbers separated by space:");
  List<int> numbers = readIntListFromInput();

  int sumOfSquares = calculateSumOfSquaresOfOddNumbers(numbers);

  print("Sum of the squares of odd numbers in the list: $sumOfSquares");
}

int calculateSumOfSquaresOfOddNumbers(List<int> numbers) {
  int sum = 0;

  for (int number in numbers) {
    if (number % 2 != 0) {
      // Check if the number is odd
      sum += (number * number);
    }
  }

  return sum;
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
