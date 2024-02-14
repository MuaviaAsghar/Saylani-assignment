import 'dart:io';

void main() {
  stdout.write("Enter the number you want to get factorial of: ");
  int number = int.parse(stdin.readLineSync()!);
  factorial(number);
}

int factorial(int number) {
  int initialNumber = 1;
  for (int i = 1; i <= number; ++i) {
    initialNumber *= i;
  }
  print("Factorial of $number is :$initialNumber");
  return initialNumber;
}
