void main() {
  print('--------------- List --------------------');
  List<int> listNumber = [3, 6, 10, 9, 4, 30, 57, 1];
  print('---------------Task 1--------------------');
  printList(listNumber);
  print('---------------Task 2--------------------');
  listSum(listNumber);
  print('---------------Task 3 --------------------');
  listMax(listNumber);
  print('---------------Task 4 --------------------');
  listMin(listNumber);
  print('---------------Task 5 --------------------');
  printEven(listNumber);

  print('--------------- Map --------------------');
  Map<String, int> mapNumber = {
    "One": 3,
    "two": 6,
    "three": 10,
    "four": 9,
    "five": 4,
    "six": 30,
    "seven": 57,
    "eight": 1,
  };

  print('---------------Task 1 --------------------');
  printKeys(mapNumber);
  print('---------------Task 2 --------------------');
  printValues(mapNumber);
  print('---------------Task 3 --------------------');
  mapSum(mapNumber);
  print('---------------Task 4 --------------------');
  mapMax(mapNumber);
  print('---------------Task 5 --------------------');
  mapMin(mapNumber);

  print('--------------- List of Map --------------------');
  List listOfMaps = [
    {"name": "Alice", "age": 25},
    {"name": "Bob", "age": 30},
    {"name": "Charlie", "age": 35}
  ];
  print('---------------Task 1 --------------------');
  printName(listOfMaps);
  print('---------------Task 2 --------------------');
  printAge(listOfMaps);
  print('---------------Task 3 --------------------');
  printOldest(listOfMaps);
  print('---------------Task 4 --------------------');
  printYoungest(listOfMaps);
  print('---------------Task 5 --------------------');
  addItem(listOfMaps);
  print('---------------Task 6 --------------------');
  removeItem(listOfMaps);
  print('---------------Task 7 --------------------');
  sortAge(listOfMaps);
  print('---------------Task 8 --------------------');
  sortName(listOfMaps);
}

printList(List listNumber) {
  for (var element in listNumber) {
    print(element);
  }
}

listSum(List<int> listNumber) {
  int sum = 0;
  for (var element in listNumber) {
    sum += element;
  }
  print('The sum is $sum');
}

listMax(List listNumber) {
  int max = listNumber[0];
  for (var element in listNumber) {
    (element > max) ? max = element : "";
  }
  print('The max element is $max');
}

listMin(List listNumber) {
  int min = listNumber[0];
  for (var element in listNumber) {
    (element < min) ? min = element : "";
  }
  print('The min element is $min');
}

printEven(List listNumber) {
  for (var element in listNumber) {
    if (element.isEven) {
      print(element);
    }
  }
}

printKeys(Map mapNumber) {
  for (var key in mapNumber.keys) {
    print(key);
  }
}

printValues(Map mapNumber) {
  for (var value in mapNumber.values) {
    print(value);
  }
}

mapSum(Map<String, int> mapNumber) {
  int sum = 0;
  for (var element in mapNumber.values) {
    sum += element;
  }
  print(sum);
}

mapMax(Map mapNumber) {
  int max = 0;
  String theKeyofMax = "";
  for (var element in mapNumber.entries) {
    if (element.value > max) {
      max = element.value;
      theKeyofMax = element.key;
    }
  }
  print(theKeyofMax);
}

mapMin(Map mapNumber) {
  int min = 700000;
  String theKeyodMin = "";
  for (var element in mapNumber.entries) {
    if (element.value < min) {
      min = element.value;
      theKeyodMin = element.key;
    }
  }
  print(theKeyodMin);
}

printName(List listOfMaps) {
  for (var element in listOfMaps) {
    print(element["name"]);
  }
}

printAge(List listOfMaps) {
  for (var element in listOfMaps) {
    print(element["age"]);
  }
}

printOldest(List listOfMaps) {
  int oldest = listOfMaps[0]["age"];
  for (var element in listOfMaps) {
    (element["age"] > oldest) ? oldest = element["age"] : "";
  }
  print(oldest);
}

printYoungest(List listOfMaps) {
  int youngest = listOfMaps[0]["age"];
  for (var element in listOfMaps) {
    (element["age"] < youngest) ? youngest = element["age"] : "";
  }
  print(youngest);
}

addItem(List listOfMaps) {
  listOfMaps.add({"name": "David", "age": 40});
  print(listOfMaps);
}

removeItem(List listOfMaps) {
  listOfMaps.removeWhere((element) => element["name"] == "David");
  print(listOfMaps);
}

sortAge(List listOfMaps) {
  listOfMaps.sort((a, b) => a["age"].compareTo(b["age"]));
  print(listOfMaps);
}

sortName(List listOfMaps) {
  listOfMaps.sort((a, b) => b["name"].compareTo(a["name"]));
  print(listOfMaps);
}
