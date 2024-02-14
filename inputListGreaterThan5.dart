// Q18:Write a program that takes a list of numbers as input and prints the numbers greater than 5 using a for loop and if-else condition.
import 'dart:io';

void main() {
  print("Enter a list of numbers separated by space:");
  List<int> numbers = readIntListFromInput();

  print("Numbers greater than 5:");
  for (int number in numbers) {
    if (number > 5) {
      print(number);
    }
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
