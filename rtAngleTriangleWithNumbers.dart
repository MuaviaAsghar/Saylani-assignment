// Q 11: Program to display a pattern like a right angle triangle with a number using loop.

import 'dart:io';

void main() {
  print("Enter the number of rows for the right-angled triangle:");
  int numRows = int.parse(stdin.readLineSync()!);

  print("Right-angled triangle pattern with numbers:");
  for (int i = 1; i <= numRows; i++) {
    for (int j = 1; j <= i; j++) {
      stdout.write('$j');
    }
    print('');
  }
}
