// Q6: Implement a code that finds the largest element in a list using a for loop.
// Example: Input: [3, 9, 1, 6, 4, 2, 8, 5, 7]
// Output: Largest element: 9
import 'dart:io';

void main() {
  print("Enter a list of integers separated by space:");
  List<int> numbers = readIntListFromInput();

  if (numbers.isEmpty) {
    print("List is empty.");
  } else {
    int largestElement = findLargestElement(numbers);
    print("The largest element in the list is: $largestElement");
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

int findLargestElement(List<int> list) {
  int largest = list[0];

  for (int i = 1; i < list.length; i++) {
    if (list[i] > largest) {
      largest = list[i];
    }
  }

  return largest;
}
