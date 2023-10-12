import 'dart:html';

import 'package:hw1/hw1.dart' as hw1;

void main(List<String> arguments) {
  print(printList([3, 6, 10, 9, 4, 30, 57, 1]));
  print("-----------------------------");
  print(sumList([3, 6, 10, 9, 4, 30, 100, 1]));
  print("-----------------------------");
  print(maxNumberInList([3, 6, 10, 9, 4, 30, 57, 1]));
  print("-----------------------------");
  print(minNumberInList([3, 6, 10, 9, 4, 30, 57, 1]));
  print("-----------------------------");
  print(evenNumber([3, 6, 10, 9, 4, 30, 57, 1]));

  printKey({
    "One": 3,
    "two": 6,
    "three": 10,
    "four": 9,
    "five": 4,
    "six": 30,
    "seven": 57,
    "eight": 1
  });
  print("-----------------------------");

  printValue({
    "One": 3,
    "two": 6,
    "three": 10,
    "four": 9,
    "five": 4,
    "six": 30,
    "seven": 57,
    "eight": 1
  });
  print("-----------------------------");
  printPersonName([
    {"name": "Alice", "age": 25},
    {"name": "Bob", "age": 30},
    {"name": "Charlie", "age": 35}
  ]);
  print("-----------------------------");

  printPersonAge([
    {"name": "Alice", "age": 25},
    {"name": "Bob", "age": 30},
    {"name": "Charlie", "age": 35}
  ]);

  List listOfMaps = [
    {"name": "Alice", "age": 25},
    {"name": "Bob", "age": 30},
    {"name": "Charlie", "age": 35}
  ];
  print("-----------------------------");

  listOfMaps.add({"name": "David", "age": 40});
  print(listOfMaps);
  print("-----------------------------");
}

//Funcations
printList(List<int> number) {
  for (int i = 0; i < number.length; i++) {
    print(number[i]);
  }
}

int sumList(List<int> number) {
  int sum = 0;
  for (int i = 0; i < number.length; i++) {
    sum = sum + number[i];
  }
  return sum;
}

minNumberInList(List<int> number) {
  for (int i = 0; i < number.length; i++) {
    number.sort();
  }
  print(number.first);
}

maxNumberInList(List<int> number) {
  for (int i = 0; i < number.length; i++) {
    number.sort();
  }
  print(number.last);
}

evenNumber(List<int> number) {
  for (int i = 0; i < number.length; i++) {
    if (number[i] % 2 == 0) {
      print(number[i]);
    }
  }
}

printKey(Map<String, int> mapNumber) {
  mapNumber.forEach((key, value) => print('$key'));
}

printValue(Map<String, int> mapNumber) {
  mapNumber.forEach((key, value) => print('$value'));
}

printPersonName(List listOfMaps) {
  for (int i = 0; i < listOfMaps.length; i++) {
    print(listOfMaps[i]["name"]);
  }
}

printPersonAge(List listOfMaps) {
  for (int i = 0; i < listOfMaps.length; i++) {
    print(listOfMaps[i]["age"]);
  }
}

