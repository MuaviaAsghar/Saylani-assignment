// Q14:Write a program to make a pyramid pattern with numbers increased by1.
//   1
//  2 3
//  4 5 6
// 7 8 9 10
import 'dart:io';

void main() {
  print("Enter the number of rows for the pyramid:");
  int numRows = int.parse(stdin.readLineSync()!);

  int currentNumber = 1;
  for (int i = 1; i <= numRows; i++) {
    for (int space = 1; space <= numRows - i; space++) {
      stdout.write(' ');
    }

    for (int j = 1; j <= i; j++) {
      stdout.write('$currentNumber ');
      currentNumber++;
    }

    print('');
  }
}
