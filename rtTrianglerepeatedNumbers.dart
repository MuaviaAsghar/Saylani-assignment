// Q 12: Program to make such a pattern like a right angle triangle with a number which will repeat a number in a row.

import 'dart:io';

void main() {
  print("Enter the number of rows for the right-angled triangle:");
  int numRows = int.parse(stdin.readLineSync()!);

  for (int i = 1; i <= numRows; i++) {
    for (int j = 1; j <= i; j++) {
      stdout.write('$i');
    }
    print('');
  }
}
