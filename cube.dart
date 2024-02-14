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
