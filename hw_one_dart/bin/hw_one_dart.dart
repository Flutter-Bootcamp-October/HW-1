// import 'dart:html';

import 'package:hw_one_dart/hw_one_dart.dart' as hw_one_dart;

// list methods:
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

int sumALL(List list) {
  int listSum = 0;
  for (int element in list) {
    listSum += element;
  }
  return listSum;
}

int listMax(List list) {
  int listMax = list[0];
  for (int element in list) {
    if (element > listMax) {
      listMax = element;
    }
  }
  return listMax;
  // print("max done!");
}

int listMin(List list) {
  int listMin = list[0];
  for (int element in list) {
    if (element < listMin) {
      listMin = element;
    }
  }
  return listMin;
  // print("min done!");
}

void listEvens(List list) {
  for (int element in list) {
    if (element.isEven) {
      print(element);
    }
  }
}

// map methods:
void printKeys(Map map) {
  for (var key in map.keys) {
    print(key);
  }
}

void printValues(Map map) {
  for (var value in map.values) {
    print(value);
  }
}

int sumValues(Map map) {
  int sum = 0;
  for (int value in map.values) {
    sum += value;
  }
  return sum;
}

String mapMax(Map map) {
  var maxV;
  var maxK;
  bool notAssigned = true;
  for (var element in map.entries) {
    if (notAssigned) {
      maxV = element.value;
      maxK = element.key;
      notAssigned = false;
    }
    if (element.value > maxV) {
      maxV = element.value;
      maxK = element.key;
    }
  }
  return maxK;
}

String mapMin(Map map) {
  var minV;
  var minK;
  bool notAssigned = true;
  for (var element in map.entries) {
    if (notAssigned) {
      minV = element.value;
      minK = element.key;
      notAssigned = false;
    }
    if (element.value < minV) {
      minV = element.value;
      minK = element.key;
    }
  }
  return minK;
}

// listOfMaps methods:
void printNames(List list) {
  for (Map dict in list) {
    print(dict["name"]);
  }
}

void printAges(List list) {
  for (Map dict in list) {
    print(dict["age"]);
  }
}

String oldest(List list) {
  var maxName;
  var maxAge;
  bool notAssigned = true;
  for (Map dict in list) {
    if (notAssigned) {
      maxName = dict["name"];
      maxAge = dict["age"];
      notAssigned = false;
    }
    if (dict["age"] > maxAge) {
      maxName = dict["name"];
      maxAge = dict["age"];
    }
  }
  return maxName;
}

String youngest(List list) {
  var minName;
  var minAge;
  bool notAssigned = true;
  for (Map dict in list) {
    if (notAssigned) {
      minName = dict["name"];
      minAge = dict["age"];
      notAssigned = false;
    }
    if (dict["age"] < minAge) {
      minName = dict["name"];
      minAge = dict["age"];
    }
  }
  return minName;
}

void addPerson(List list, String n, int a) {
  list.add({"name": n, "age": a});
}

void removePerson(List list, String n) {
  for (Map dict in list) {
    if (dict["name"] == n) {
      list.remove(dict);
      break;
    }
  }
}

//Sort the List of Maps created above by age in ascending order
void sortAscending(List list) {
  list.sort((a, b) => a["age"].compareTo(b["age"]));
}

//Sort the List of Maps created above by name in descending order
void sortDescending(List list) {
  list.sort((b, a) => a["name"].compareTo(b["name"]));
}

void main(List<String> arguments) {
  List listNumber = [3, 6, 10, 9, 4, 30, 57, 1];
  Map mapNumber = {
    "One": 3,
    "two": 6,
    "three": 10,
    "four": 9,
    "five": 4,
    "six": 30,
    "seven": 57,
    "eight": 1
  };
  List listOfMaps = [
    {"name": "Alice", "age": 25},
    {"name": "Bob", "age": 30},
    {"name": "Raffal", "age": 26},
    {"name": "Charlie", "age": 35},
  ];
  // printAll(listNumber);
  // print(sumALL(listNumber));
  // print(listMax(listNumber));
  // print(listMin(listNumber));
  // listEvens(listNumber);
  // printKeys(mapNumber);
  // printValues(mapNumber);
  // print(sumValues(mapNumber));
  // print(mapMax(mapNumber));
  // print(mapMin(mapNumber));
  // printNames(listOfMaps);
  // printAges(listOfMaps);
  // print(oldest(listOfMaps));
  // print(youngest(listOfMaps));
  addPerson(listOfMaps, "David", 40);
  // removePerson(listOfMaps, "Charlie");
  sortAscending(listOfMaps);
  sortDescending(listOfMaps);
  print(listOfMaps);
}
