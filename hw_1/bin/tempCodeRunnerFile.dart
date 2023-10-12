void main() {
  // ------------------ Lists ----------------------
  // List<int> listNumber = [3, 6, 10, 9, 4, 30, 57, 1];
  // // Task 1
  // print('---------------Task 1--------------------');
  // for (var element in listNumber) {
  //   print(element);
  // }
  // // Task 2
  // print('---------------Task 2--------------------');
  // int sum = 0;
  // for (var element in listNumber) {
  //   sum += element;
  // }
  // print('The sum is $sum');
  // print('---------------Task 3 --------------------');
  // int max = listNumber[0];
  // for (var element in listNumber) {
  //   (element > max) ? max = element : "";
  // }
  // print('The max element is $max');
  // print('---------------Task 4 --------------------');
  // int min = listNumber[0];
  // for (var element in listNumber) {
  //   (element < min) ? min = element : "";
  // }
  // print('The min element is $min');
  // print('---------------Task 5 --------------------');
  // for (var element in listNumber) {
  //   if (element.isEven) {
  //     print(element);
  //   }
  // }

  // ------------------ Map ----------------------
  // Map<String, int> mapNumber = {
  //   "One": 3,
  //   "two": 6,
  //   "three": 10,
  //   "four": 9,
  //   "five": 4,
  //   "six": 30,
  //   "seven": 57,
  //   "eight": 1,
  // };

  // print('---------------Task 1 --------------------');
  // for (var key in mapNumber.keys) {
  //   print(key);
  // }
  // print('---------------Task 2 --------------------');
  // for (var value in mapNumber.values) {
  //   print(value);
  // }
  // print('---------------Task 3 --------------------');
  // int sum = 0;
  // for (var element in mapNumber.values) {
  //   sum += element;
  // }
  // print(sum);

  // print('---------------Task 4 --------------------');
  // int max = 0;
  // String theKeyofMax = "";
  // for (var element in mapNumber.entries) {
  //   if (element.value > max) {
  //     max = element.value;
  //     theKeyofMax = element.key;
  //   }
  // }
  // print(theKeyofMax);

  // print('---------------Task 5 --------------------');
  // int min = 700000;
  // String theKeyodMin = "";
  // for (var element in mapNumber.entries) {
  //   if (element.value < min) {
  //     min = element.value;
  //     theKeyodMin = element.key;
  //   }
  // }
  // print(theKeyodMin);

  // ------------------ List of Maps ----------------------
  List listOfMaps = [
    {"name": "Alice", "age": 25},
    {"name": "Bob", "age": 30},
    {"name": "Charlie", "age": 35}
  ];
  print('---------------Task 1 --------------------');
  for (var element in listOfMaps) {
    print(element["name"]);
  }
  print('---------------Task 2 --------------------');
  for (var element in listOfMaps) {
    print(element["age"]);
  }
  print('---------------Task 3 --------------------');
  int oldest = listOfMaps[0]["age"];
  for (var element in listOfMaps) {
    (element["age"] > oldest) ? oldest = element["age"] : "";
  }
  print(oldest);
  print('---------------Task 4 --------------------');
  int youngest = listOfMaps[0]["age"];
  for (var element in listOfMaps) {
    (element["age"] < youngest) ? youngest = element["age"] : "";
  }
  print(youngest);
  print('---------------Task 5 --------------------');
  listOfMaps.add({"name": "David", "age": 40});
  print(listOfMaps);
  print('---------------Task 6 --------------------');
  listOfMaps.removeWhere((element) => element["name"] == "David");
  print(listOfMaps);
  print('---------------Task 7 --------------------');
  listOfMaps.sort((a, b) => a["age"].compareTo(b["age"]));
  print('---------------Task 8 --------------------');
}
