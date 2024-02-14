// Q 10: Program to display a pattern like a right angle triangle using an asterisk using loop.
import 'dart:io';

void main() {
  print("Enter the number of rows for the right-angled triangle:");
  int numRows = int.parse(stdin.readLineSync()!);

  for (int i = 1; i <= numRows; i++) {
    for (int j = 1; j <= i; j++) {
      stdout.write('*');
    }
    print(' ');
  }
}
