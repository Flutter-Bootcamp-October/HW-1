import 'dart:core';

//Homework 1 : Rahaf Alqahtani
void main(List<String> arguments) {
  //List
  print("---------- List Section ----------\n");
  List listNumber = [3, 6, 10, 9, 4, 30, 57, 1];

  printAllElement(listNumber);
  sumAllElement(listNumber);
  maxElement(listNumber);
  minElement(listNumber);
  evenElement(listNumber);

  //Map
  print("\n---------- Map Section ----------\n");
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
  printValues(mapNumber);
  sumAllValues(mapNumber);
  maxValue(mapNumber);
  minValue(mapNumber);

  //List Of Map
  print("\n---------- List Of Map Section ----------\n");
  List listOfMaps = [
    {"name": "Alice", "age": 25},
    {"name": "Bob", "age": 30},
    {"name": "Charlie", "age": 35}
  ];

  printName(listOfMaps);
  printAge(listOfMaps);
  printOldestAge(listOfMaps);
  printYoungestAge(listOfMaps);
  addNewPerson(listOfMaps);
  print("\nAfter adding one person :");
  printName(listOfMaps);
  printAge(listOfMaps);
  removePerson(listOfMaps);
  print("\nAfter deleting one person :");
  printName(listOfMaps);
  printAge(listOfMaps);
  sortListOfMapByAge(listOfMaps);
  print("\nAfter Sorting by Age :");
  printName(listOfMaps);
  printAge(listOfMaps);
  sortListOfMapByName(listOfMaps);
  print("\nAfter Sorting by Name :");
  printName(listOfMaps);
  printAge(listOfMaps);
}

//*                                    List                                    */

// 1. Print all the elements of a given list using a for loop.
printAllElement(List list) {
  print("print all List : ");
  for (var numbers in list) {
    print(numbers);
  }
}

// 2. Calculate the sum of all the elements in a given list using a for loop.
sumAllElement(List list) {
  int sum = 0;
  for (int numbers in list) {
    sum += numbers;
  }

  print("The sum of all element : $sum");
}

// 3. Find the maximum element in a given list using a for loop.
maxElement(List list) {
  int max = list[0];
  for (int i = 0; i < list.length; i++) {
    if (list[i] > max) {
      max = list[i];
    }
  }
  print("The maximum element is : $max");
}

// 4. Find the minimum element in a given list using a for loop.
minElement(List list) {
  int min = list[0];
  for (int i = 0; i < list.length; i++) {
    if (list[i] < min) {
      min = list[i];
    }
  }
  print("The minimum element is : $min");
}

// 5. Print all the even elements of a given list using a for loop.
evenElement(List list) {
  List evenList = [];
  for (int numbers in list) {
    if (numbers % 2 == 0) {
      evenList.add(numbers);
    }
  }
  print("The Even element : $evenList");
}

//*                                    Map                                    */

// 1. Print all the keys in a given map using a for loop.
printKeys(Map map) {
  print("The Keys :");
  // I use Iterable
  Iterable keysOfMap = map.keys;
  for (var key in keysOfMap) {
    print(key);
  }
}

// 2. Print all the values in a given map using a for loop.
printValues(Map map) {
  print("\nThe Values :");
  // I use Iterable
  Iterable valuesOfMap = map.values;
  for (var value in valuesOfMap) {
    print(value);
  }
  print(""); //to orgnaize the output
}

// 3. Calculate the sum of all the values in a given map using a for loop.
sumAllValues(Map map) {
  List values = map.values.toList();
  int sum = 0;
  for (int value in values) {
    sum += value;
  }
  print("The sum of all values : $sum");
}

// 4. Find the key associated with the maximum value in a given map using a for loop.
maxValue(Map map) {
  List values = map.values.toList();
  int max = values[0];
  for (int i = 0; i < values.length; i++) {
    if (values[i] > max) {
      max = values[i];
    }
  }
  print("The maximum value is : $max");
}

// 5. Find the key associated with the minimum value in a given map using a for loop.
minValue(Map map) {
  List values = map.values.toList();
  int min = values[0];
  for (int i = 0; i < values.length; i++) {
    if (values[i] < min) {
      min = values[i];
    }
  }
  print("The minimum value is : $min");
}

//*                                    List Of Map                                    */

// 1. Print the name of each person in the List of Maps created above using a for loop.
printName(List list) {
  print("The Names : ");
  for (int i = 0; i < list.length; i++) {
    var name = list[i]['name'];

    print(name);
  }
}

// 2. Print the age of each person in the List of Maps created above using a for loop.
printAge(List list) {
  print("\nThe Ages : ");
  for (int i = 0; i < list.length; i++) {
    var age = list[i]['age'];
    print(age);
  }
}

// 3. Find the oldest person in the List of Maps created above using a for loop.
printOldestAge(List list) {
  int old = list[0]['age'];
  for (int i = 0; i < list.length; i++) {
    if (old < list[i]['age']) {
      old = list[i]['age'];
    }
  }
  print("\nThe Oldest person : $old");
}

// 4. Find the youngest person in the List of Maps created above using a for loop.
printYoungestAge(List list) {
  int young = list[0]['age'];
  for (int i = 0; i < list.length; i++) {
    if (young > list[i]['age']) {
      young = list[i]['age'];
    }
  }
  print("The Youngest person : $young");
}

// 5. Add a new person to the List of Maps created above. The new person should have the name "David" and age 40.
addNewPerson(List list) {
  list.add({"name": "David", "age": 40});
}

// 6. Remove the person with the name "Charlie" from the List of Maps created above.
removePerson(List list) {
  list.removeWhere((element) => element["name"] == 'Charlie');
}

// 7. Sort the List of Maps created above by age in ascending order.
sortListOfMapByAge(List list) {
  list.sort((a, b) => (b['age']).compareTo(a['age']));
}

// 8. Sort the List of Maps created above by name in descending order.
sortListOfMapByName(List list) {
  list.sort((a, b) => (a['name']).compareTo(b['name']));
}
