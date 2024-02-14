// Q9: Program to display the cube of the number up to an integer.

import 'dart:io';

void main() {
  print("Enter an integer:");
  int n = int.parse(stdin.readLineSync()!);

  print("Cubes of numbers up to $n:");
  for (int i = 1; i <= n; i++) {
    int cube = i * i * i;
    print("Cube of $i: $cube");
  }
}
