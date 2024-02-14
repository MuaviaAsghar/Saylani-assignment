// Q5: Write a program that calculates the sum of all the digits in a given number using a while loop. Example: Input: 12345
// Output: Sum of digits: 15
import 'dart:io';

void main() {
  print("Enter a number:");
  int number = int.parse(stdin.readLineSync()!);

  int sum = calculateDigitSum(number);

  print("The sum of the digits in $number is: $sum");
}

int calculateDigitSum(int number) {
  int sum = 0;

  while (number > 0) {
    int digit = number % 10;
    sum += digit;
    number ~/= 10;
  }
  return sum;
}
