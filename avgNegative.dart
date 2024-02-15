// Q23:Implement a code that finds the average of all the negative numbers in
// a list using a for loop and if-else condition.

import 'dart:io';

void main() {
  print("Enter a list of numbers separated by space:");
  List<double> numbers = readDoubleListFromInput();

  double averageOfNegatives = calculateAverageOfNegatives(numbers);

  if (averageOfNegatives.isNaN) {
    print("No negative numbers in the list.");
  } else {
    print("Average of negative numbers in the list: $averageOfNegatives");
  }
}

double calculateAverageOfNegatives(List<double> numbers) {
  double sumOfNegatives = 0;
  int countOfNegatives = 0;

  for (double number in numbers) {
    if (number < 0) {
      sumOfNegatives += number;
      countOfNegatives++;
    }
  }

  if (countOfNegatives == 0) {
    return double.nan;
  }

  return sumOfNegatives / countOfNegatives;
}

List<double> readDoubleListFromInput() {
  String input = stdin.readLineSync()!;
  List<String> numberStrings = input.split(' ');

  List<double> numbers = [];

  for (String numStr in numberStrings) {
    numbers.add(double.parse(numStr));
  }

  return numbers;
}
