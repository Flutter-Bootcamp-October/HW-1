import 'dart:io';

void printlist(List listNumber) {
  print("the list:");
  for (int i = 0; i < listNumber.length; i++) {
    print(listNumber[i]);
  }
}

void space() {
  print(
      "*************************************************************************************");
}

void sumoflist(List<int> listNumber) {
  int total = 0;
  for (int i = 0; i < listNumber.length; i++) {
    total += listNumber[i];
  }
  print("the total of the list:   $total");
}

void maxNum(List listNumber) {
  int maxnumber = 0;

  for (int i = 0; i < listNumber.length; i++) {
    if (maxnumber < listNumber[i]) {
      maxnumber = listNumber[i];
    }
  }
  print("the maximum number of the list is :  $maxnumber");
}

void minumbum(List listNumber) {
  int minum = listNumber[0];
  for (int i = 0; i < listNumber.length; i++) {
    if (minum > listNumber[i]) {
      minum = listNumber[i];
    }
  }
  print(" the minimum number of the list is:   $minum");
}

void evenelemnt(List listNumber) {
  int iseven;
  print("even n numbers of the list:");
  for (int i = 0; i < listNumber.length; i++) {
    if (listNumber[i] % 2 == 0) {
      iseven = listNumber[i];
      print("this is even $iseven");
    }
  }
}

void printallkeys(Map<String, int> mapNumber) {
  print("All keys in the map:");
  for (var key in mapNumber.keys) {
    print(key);
  }
}

void allvalusinmaplist(Map<String, int> mapNumber) {
  print("All values in the map:");
  for (var value in mapNumber.values) {
    print(value);
  }
}

void calculatemapvalus(Map<String, int> mapNumber) {
  int sum = 0;
  for (var value in mapNumber.values) {
    sum += value;
  }
  print("Sum of all values: $sum");
}

void key_associated_with_maximumvalue(Map<String, int> mapNumber) {
  int maxValue = mapNumber.values.first;
  for (var entry in mapNumber.entries) {
    if (entry.value > maxValue) {
      maxValue = entry.value;
    }
  }
  print("Key associated with the maximun value: $maxValue");
}

void key_associated_with_minimumvalu(Map<String, int> mapNumber) {
  int minValue = mapNumber.values.first;
  String minKey = mapNumber.keys.first;
  for (var entry in mapNumber.entries) {
    if (entry.value < minValue) {
      minValue = entry.value;
      minKey = entry.key;
    }
  }
  print("Key associated with the minimum value: $minKey");
}

void printallnames(List<Map<String, dynamic>> listOfMaps) {
  print("Names  in the list:");
  for (var person in listOfMaps) {
    print(person["name"]);
  }
}

void printallages(List<Map<String, dynamic>> listOfMaps) {
  print("Ages of people in the list:");
  for (var person in listOfMaps) {
    print(person["age"]);
  }
}

void theoldest(List<Map<String, dynamic>> listOfMaps) {
  Map<String, dynamic> oldestPerson = listOfMaps[0];

  for (var person in listOfMaps) {
    if (person["age"] > oldestPerson["age"]) {
      oldestPerson = person;
    }
  }
  print("the oldest person is $oldestPerson");
}

void youngest(List<Map<String, dynamic>> listOfMaps) {
  Map<String, dynamic> youngestPerson = listOfMaps[0];
  for (var person in listOfMaps) {
    if (person["age"] < youngestPerson["age"]) {
      youngestPerson = person;
    }
  }
  print("the youngest  is $youngestPerson");

  // Add a new person to the List of Maps
  Map<String, dynamic> newPerson = {"name": "David", "age": 40};
  listOfMaps.add(newPerson);
}

void removename(List<Map<String, dynamic>> listOfMaps, String removename) {
  listOfMaps.removeWhere((person) => person["name"] == removename);

  print("thelist after removing $removename is $listOfMaps");
}

void addnewperson(List<Map<String, dynamic>> listOfMaps) {
  Map<String, dynamic> newPerson = {"name": "David", "age": 40};
  print(
      "the new person added is $newPerson the list after adding him is $listOfMaps");
}

void sortlistbyage(List<Map<String, dynamic>> listOfMaps) {
  listOfMaps.sort((age, tonew) => age["age"].compareTo(tonew["age"]));

  print("after sorting the list by age : $listOfMaps");
}

void sortthelistbyname(List<Map<String, dynamic>> listOfMaps) {
  listOfMaps.sort(
      (sortfirst, sortsec) => sortsec["name"].compareTo(sortfirst["name"]));
  print("the list after sorting by name: $listOfMaps");
}

void main() {
  List<int> listNumber = [3, 6, 10, 9, 4, 30, 57, 1];

  Map<String, int> mapNumber = {
    "One": 3,
    "two": 6,
    "three": 10,
    "four": 9,
    "five": 4,
    "six": 30,
    "seven": 57,
    "eight": 1
  };
  List<Map<String, dynamic>> listOfMaps = [
    {"name": "Alice", "age": 25},
    {"name": "Bob", "age": 30},
    {"name": "Charlie", "age": 35}
  ];
  space();
  printlist(listNumber);
  space();
  sumoflist(listNumber);
  space();
  maxNum(listNumber);
  space();
  minumbum(listNumber);
  space();
  evenelemnt(listNumber);
  space();
  printallkeys(mapNumber);
  space();
  allvalusinmaplist(mapNumber);
  space();
  calculatemapvalus(mapNumber);
  space();
  key_associated_with_maximumvalue(mapNumber);
  space();
  key_associated_with_minimumvalu(mapNumber);
  space();
  printallnames(listOfMaps);
  space();
  printallages(listOfMaps);
  space();
  theoldest(listOfMaps);
  space();
  youngest(listOfMaps);
  space();
  addnewperson(listOfMaps);
  space();
  removename(listOfMaps, "Charlie");
  space();
  sortlistbyage(listOfMaps);
  space();
  sortthelistbyname(listOfMaps);
}
