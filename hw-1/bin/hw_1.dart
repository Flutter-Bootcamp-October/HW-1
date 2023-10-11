void main(List<String> arguments) {
  q1();

  q2();

  q3();
}

//-------------List----------------
void q1() {
  List listNumber = [3, 6, 10, 9, 4, 30, 57, 1];
  printList(listNumber);
  print("");
  printSum(listNumber);
  print("");
  findMax(listNumber);
  print("");
  findMin(listNumber);
  print("");
  findEven(listNumber);
  print("");
}

void printList(List list) {
  for (var items in list) {
    print("Index ${list.indexOf(items)}: $items");
  }
}

void printSum(List list) {
  num sum = 0;
  for (var items in list) {
    sum += items;
  }
  print("Sum is: $sum");
}

void findMax(List list) {
  num maxNum = list[0];
  for (int i = 0; i < list.length; i++) {
    if (list[i] > maxNum) {
      maxNum = list[i];
    }
  }
  print("Max number is: $maxNum");
}

void findMin(List list) {
  num minNum = list[0];
  for (int i = 0; i < list.length; i++) {
    if (list[i] < minNum) {
      minNum = list[i];
    }
  }
  print("Min number is: $minNum");
}

void findEven(List list) {
  List evenList = [];
  for (var items in list) {
    if (items % 2 == 0) {
      evenList.add(items);
    }
  }
  print(evenList);
}

//-------------List----------------

//-------------Map-----------------
void q2() {
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
  printKeys(mapNumber);
  print("");
  printValues(mapNumber);
  print("");
  sumValues(mapNumber);
  print("");
  findMaxMap(mapNumber);
  print("");
  findMinMap(mapNumber);
  print("");
}

void printKeys(Map map) {
  map.forEach((key, value) {
    print("Key: $key");
  });
}

void printValues(Map map) {
  map.forEach((key, value) {
    print("Value: $value");
  });
}

void sumValues(Map map) {
  num sum = 0;
  map.forEach((key, value) {
    sum += value;
  });
  print("Sum is: $sum");
}

void findMaxMap(Map map) {
  num maxNum = map.values.first;
  map.forEach((key, value) {
    if (value > maxNum) {
      maxNum = value;
    }
  });
  print("Max number is: $maxNum");
}

void findMinMap(Map map) {
  num minNum = map.values.first;
  map.forEach((key, value) {
    if (value < minNum) {
      minNum = value;
    }
  });
  print("Min number is: $minNum");
}

//-------------Map-----------------

//--------List-of-Maps-------------
void q3() {
  List listOfMaps = [
    {"name": "Alice", "age": 25},
    {"name": "Bob", "age": 30},
    {"name": "Charlie", "age": 35}
  ];
  printNames(listOfMaps);
  print("");
  printAges(listOfMaps);
  print("");
  oldestPerson(listOfMaps);
  print("");
  youngestPerson(listOfMaps);
  print("");
  addPerson(listOfMaps);
  print("");
  removePerson(listOfMaps);
  print("");
  ascendSort(listOfMaps);
  print("");
  descendSort(listOfMaps);
}

void printNames(List listOfMaps) {
  for (var value in listOfMaps) {
    print("Name: ${value['name']}");
  }
}

void printAges(List listOfMaps) {
  for (var value in listOfMaps) {
    print("Age: ${value['age']}");
  }
}

void oldestPerson(List listOfMaps) {
  var oldest = listOfMaps[0]["age"];
  var name = listOfMaps[0]["name"];
  for (var value in listOfMaps) {
    if (value["age"] > oldest) {
      name = value["name"];
    }
  }
  print(name);
}

void youngestPerson(List listOfMaps) {
  var youngest = listOfMaps[0]["age"];
  var name = listOfMaps[0]["name"];
  for (var value in listOfMaps) {
    if (value["age"] < youngest) {
      name = value["name"];
    }
  }
  print(name);
}

void addPerson(List listOfMaps) {
  listOfMaps.add({"name": "David", "age": 40});
  print(listOfMaps);
}

void removePerson(List listOfMaps) {
  List toRemove = [];
  for (var element in listOfMaps) {
    if (element["name"].contains("Charlie")) {
      toRemove.add(element);
    }
  }
  listOfMaps.remove(toRemove[0]);
  print(listOfMaps);
}

void ascendSort(List listOfMaps) {
  listOfMaps.sort((a, b) => (a['age']).compareTo(b['age']));
  print(listOfMaps);
}

void descendSort(List listOfMaps) {
  listOfMaps.sort((a, b) => (b['name']).compareTo(a['name']));
  print(listOfMaps);
}
//--------List-of-Maps-------------
