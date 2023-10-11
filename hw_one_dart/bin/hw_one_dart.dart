// import 'dart:html';

import 'package:hw_one_dart/hw_one_dart.dart' as hw_one_dart;

/*
  this function prints all elements in the given list
  parameter: List list
*/
void printAll(List list) {
  for (dynamic element in list) {
    print(element);
  }
  // print("print done!");
}

void sumALL(List list) {
  var listSum = 0;
  for (int element in list) {
    listSum += element;
  }
  print(listSum);
  // print("sum done!");
}

void listMax(List list) {
  int listMax = list[0];
  for (int element in list) {
    if (element > listMax) {
      listMax = element;
    }
  }
  print(listMax);
  // print("max done!");
}

void listMin(List list) {
  int listMin = list[0];
  for (int element in list) {
    if (element < listMin) {
      listMin = element;
    }
  }
  print(listMin);
  // print("min done!");
}

void listEvens(List list) {
  for (int element in list) {
    if (element.isEven) {
      print(element);
    }
  }
}

void main(List<String> arguments) {
  List listNumber = [3, 6, 10, 9, 4, 30, 57, 1];
  printAll(listNumber);
  sumALL(listNumber);
  listMax(listNumber);
  listMin(listNumber);
  listEvens(listNumber);
}
