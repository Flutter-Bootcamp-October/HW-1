/*
    AUTHOR: Raffal Abu Eshey
    FILE: hw_one_dart.dart
    ASSIGNMENT: HW-1
    PURPOSE: This file contains functions that deals with list and maps
*/
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
}

/*
  this function returns the sum of all elements in list.
  parameter: List list
  return: int listSum
*/
int sumALL(List list) {
  int listSum = 0;
  for (int element in list) {
    listSum += element;
  }
  return listSum;
}

/*
  this function returns the maximum element in list
  parameter: List list
  return: int list Max
*/
int listMax(List list) {
  int listMax = list[0];
  for (int element in list) {
    if (element > listMax) {
      listMax = element;
    }
  }
  return listMax;
}

/*
  this function returns the minimum element in list
  parameter: List list
  return: int listMin
*/
int listMin(List list) {
  int listMin = list[0];
  for (int element in list) {
    if (element < listMin) {
      listMin = element;
    }
  }
  return listMin;
}

/*
  this function prints the even elements in list
  parameter: List list
*/
void listEvens(List list) {
  for (int element in list) {
    if (element.isEven) {
      print(element);
    }
  }
}

// map methods:
/*
  this function prints the keys of the map
  parameter: Map map
*/
void printKeys(Map map) {
  for (var key in map.keys) {
    print(key);
  }
}

/*
  this function prints the values of the map
  parameter: Map map
*/
void printValues(Map map) {
  for (var value in map.values) {
    print(value);
  }
}

/*
  this function returns the sum of values in map
  parameter: Map map
  return: int sum
*/
int sumValues(Map map) {
  int sum = 0;
  for (int value in map.values) {
    sum += value;
  }
  return sum;
}

/*
  this function returns the key of the maximum value in map
  parameter: Map map
  return: String maxK
*/
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

/*
  this function returns the key of the minimum value in map
  parameter: Map map
  return: String minK
*/
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
/*
  this function prints all the names in the maps of list
  parameter: List list
*/
void printNames(List list) {
  for (Map dict in list) {
    print(dict["name"]);
  }
}

/*
  this function prints all the ages in the maps of list
  parameter: List list
*/
void printAges(List list) {
  for (Map dict in list) {
    print(dict["age"]);
  }
}

/*
  this function returns the key of the oldest person in list of maps
  parameter: List list
  returns: String maxName
*/
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

/*
  this function returns the key of the youngest person in list of maps
  parameter: List list
  returns: String minName
*/
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

/*
  this function adds a new map to list
  parameter: List list, String n, int a
*/
void addPerson(List list, String n, int a) {
  list.add({"name": n, "age": a});
}

/*
  this function remove a map to list
  parameter: List list, String n, int a
*/
void removePerson(List list, String n) {
  for (Map dict in list) {
    if (dict["name"] == n) {
      list.remove(dict);
      break;
    }
  }
}

/*
  this function sorts the List of Maps by age in ascending order
  parameter: List list
*/
void sortAscending(List list) {
  list.sort((a, b) => a["age"].compareTo(b["age"]));
}

/*
  this function sorts the List of Maps by name in descending order
  parameter: List list
*/
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
    {"name": "Charlie", "age": 35}
  ];
  printAll(listNumber);
  print(sumALL(listNumber));
  print(listMax(listNumber));
  print(listMin(listNumber));
  listEvens(listNumber);
  printKeys(mapNumber);
  printValues(mapNumber);
  print(sumValues(mapNumber));
  print(mapMax(mapNumber));
  print(mapMin(mapNumber));
  printNames(listOfMaps);
  printAges(listOfMaps);
  print(oldest(listOfMaps));
  print(youngest(listOfMaps));
  addPerson(listOfMaps, "David", 40);
  removePerson(listOfMaps, "Charlie");
  sortAscending(listOfMaps);
  sortDescending(listOfMaps);
  print(listOfMaps);
}
