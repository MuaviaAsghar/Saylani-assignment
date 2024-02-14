// Q1 Write a program that takes a list of numbers as input and prints the
// even numbers in the list using a for loop.
// Example:
// Input: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
// Output: 2 4 6 8 10
void main() {
  List<int> list = [
    13,
    131,
    4242,
    42422,
    42424,
    42414,
    12224,
    4,
    222,
    1121,
    43,
    3
  ];

  List<int> evenNumbers = isEvennumber(list);

  print('Even Numbers: $evenNumbers');
}

List<int> isEvennumber(List<int> list) {
  List<int> evennums = [];
  List<int> oddnums = [];
  for (int i in list) {
    if (i % 2 == 0) {
      evennums.add(i);
    } else {
      oddnums.add(i);
    }
  }
  return evennums;
}
