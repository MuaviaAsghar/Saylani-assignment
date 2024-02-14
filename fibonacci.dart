// Q2: Write a program that prints the Fibonacci sequence up to a given
// number using a for loop.
// Example:
// Input: 10
// Output: 0 1 1 2 3 5 8
import 'dart:io';

void main() {
  stdout.write("Enter the limit for the Fibonacci sequence: ");
  int limit = int.parse(stdin.readLineSync()!);
  fibonacciSequence(limit);
}

void fibonacciSequence(int limit) {
  int n1 = 0, n2 = 1, n3;
  print(n1);
  print(n2);
  for (int i = 2; i < limit; i++) {
    n3 = n1 + n2;
    print('$n3');
    n1 = n2;
    n2 = n3;
  }
}
