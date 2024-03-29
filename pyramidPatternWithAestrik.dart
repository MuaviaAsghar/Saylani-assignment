// Q15:Write a program to make such a pattern as a pyramid with an asterisk.
//    *
//   * *
//  * * *
// * * * *

import 'dart:io';

void main() {
  print("Enter the number of rows for the pyramid:");
  int numRows = int.parse(stdin.readLineSync()!);

  for (int i = 1; i <= numRows; i++) {
    for (int space = 1; space <= numRows - i; space++) {
      stdout.write(' ');
    }

    for (int j = 1; j <= i; j++) {
      stdout.write('* ');
    }

    print('');
  }
}
