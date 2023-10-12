import 'dart:math';
import 'dart:io';

void main(List<String> arguments) {
  List<int> listNumber = [3, 6, 10, 9, 4, 30, 57, 1];
  //1
  for (var number in listNumber) {
    print(number);
  }
  //2
  var sum = 0;
  for (var i = 0; i < listNumber.length; i++) {
    sum += listNumber[i];
  }
  print(sum);
  //3
  int max = listNumber[0];
  for (var i = 0; i < listNumber.length; i++) {
    if (listNumber[i] > max) {
      max = listNumber[i];
    }
  }
  print("max:$max");

  int min = listNumber[0];
  for (var i = 0; i < listNumber.length; i++) {
    if (listNumber[i] < min) {
      min = listNumber[i];
    }
  }
  print("min:$min");
  print(listNumber.where((element) => element.isEven));
  //
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
  print(mapNumber.keys.toString());
  print(mapNumber.values.toString());
  var sum1 = 0;
  for (var value in mapNumber.values) {
    sum1 += value;
  }
  print(sum1);
  var key;
  var value;
  for (var i in mapNumber.keys) {
    var indkey = mapNumber[i];
    if (value == null || indkey! > value) {
      key = i;
      value = indkey;
    }
  }
  print("Key of max value:$key");

  var Key1;
  var value1;
  for (var i in mapNumber.keys) {
    if (value1 == null || mapNumber[i]! < value1) {
      Key1 = i;
    }
  }
  print("Key of min value:$Key1");

  List<dynamic> listOfMaps = [
    {"name": "Alice", "age": 25},
    {"name": "Bob", "age": 30},
    {"name": "Charlie", "age": 35}
  ];
  for (var name in listOfMaps) {
    print(name["name"]);
  }
  for (var age in listOfMaps) {
    print(age["age"]);
  }

  var maxage = listOfMaps[0]["age"];
  for (var name in listOfMaps) {
    var age = name["age"];
    if (age > maxage) {
      maxage = age;
    }
  }

  print("oldest: $maxage");

  var minage = listOfMaps[0]["age"];
  for (var name in listOfMaps) {
    var age = name["age"];
    if (age < minage) {
      minage = age;
    }
  }
  print("youngest: $minage");

  listOfMaps.add({"name": "wadha", "age": 23});
  print(listOfMaps);

  listOfMaps.removeWhere((element) => element["name"] == "Charlie");
  print(listOfMaps);

  listOfMaps.sort((a, b) => a["age"].compareTo(b["age"]));
  print(listOfMaps);
  listOfMaps.sort((a, b) => b["name"].compareTo(a["name"]));
  print(listOfMaps);

  
}
