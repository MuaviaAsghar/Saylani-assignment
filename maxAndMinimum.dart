// Q20 Implement a code that finds the maximum and minimum elements in a
// list using a for loop and if-else condition.

import 'dart:io';

void main() {
  print("Enter a list of numbers separated by space:");
  List<int> numbers = readIntListFromInput();

  if (numbers.isNotEmpty) {
    int maximum = numbers[0];
    int minimum = numbers[0];

    for (int i = 1; i < numbers.length; i++) {
      if (numbers[i] > maximum) {
        maximum = numbers[i];
      }

      if (numbers[i] < minimum) {
        minimum = numbers[i];
      }
    }

    print("Maximum element in the list: $maximum");
    print("Minimum element in the list: $minimum");
  } else {
    print("The list is empty.");
  }
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
