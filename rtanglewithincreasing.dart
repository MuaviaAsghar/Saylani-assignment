// Q 13: Program to make such a pattern like a right angle triangle with the number increased by 1 using loop.

import 'dart:io';

void main() {
  print("Enter the number of rows for the right-angled triangle:");
  int numRows = int.parse(stdin.readLineSync()!);

  for (int i = 1; i <= numRows; i++) {
    for (int j = 1; j <= i; j++) {
      stdout.write('${j + i - 1}');
    }
    print('');
  }
}
