void main() {
  List<int> list0 = [3, 6, 10, 9, 4, 30, 57, 1];
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
  List listOfMaps = [
    {"name": "Bob", "age": 30},
    {"name": "Alice", "age": 25},
    {"name": "Charlie", "age": 35}
  ];
  listAllElmint(list1: list0);
  print(listSumAllElmint(list1: list0));
  print(listOfMax(list1: list0));
  print(listOfMin(list1: list0));
  print(listOfEven(list1: list0));
  print("==========================================");
  print(mapAllKey(mapnumber: mapNumber));
  print(mapAllValue(mapnumber: mapNumber));
  print(mapOfSum(mapnumber: mapNumber));
  print(mapOfMax(mapnumber: mapNumber));
  print(mapOfMin(mapnumber: mapNumber));
  print("==========================================");
  listmapName(listOfMap: listOfMaps);
  listmapAge(listOfMap: listOfMaps);
  print(listmapOld(listOfMap: listOfMaps));
  print(listmapyoung(listOfMap: listOfMaps));
  print(listMapAdd(listOfMap: listOfMaps));
  print(listMapRemove(listOfMap: listOfMaps));
  print(listMapAsc(listOfMap: listOfMaps));
  print(listMapDesc(listOfMap: listOfMaps));
}

void listAllElmint({required List<int> list1}) {
  for (var element in list1) {
    print(element);
  }
}

listSumAllElmint({required List<int> list1}) {
  int e = 0;
  for (var element in list1) {
    e = e + element;
  }
  return "sum of number is :  $e";
}

listOfMax({required List<int> list1}) {
  int max = list1[0];
  for (var i = 0; i < list1.length; i++) {
    if (max < list1[i]) {
      max = list1[i];
    }
  }
  return "max number is: $max";
}

listOfMin({required List<int> list1}) {
  int min = list1[0];
  for (var i = 0; i < list1.length; i++) {
    if (min > list1[i]) {
      min = list1[i];
    }
  }
  return "min number is: $min";
}

listOfEven({required List<int> list1, int x = 5}) {
  var list = [];
  for (var element = 0; element < list1.length; element++) {
    if (list1[element].isEven) {
      list.add(list1[element]);
    }
  }
  return list.toList();
}

mapAllKey({required Map<String, int> mapnumber}) {
  var key = mapnumber.keys;
  return key.toList();
}

mapAllValue({required Map<String, int> mapnumber}) {
  var e = mapnumber.values;
  return e.toList();
}

mapOfSum({required Map<String, int> mapnumber}) {
  var e = mapnumber.values;

  var sum = 0;
  for (var element in e) {
    sum = sum + element;
  }
  return "sum number is: $sum";
  // print("sum number is: $sum");
}

mapOfMax({required Map<String, int> mapnumber}) {
  List<int> mapp = mapnumber.values.toList(growable: true);
  var maxm = mapp[0];
  for (var i = 0; i < mapp.length; i++) {
    if (maxm < mapp[i]) {
      maxm = mapp[i];
    }
  }
  return "min number is: $maxm";
  //print(maxm);
}

mapOfMin({required Map<String, int> mapnumber}) {
  List<int> mapp = mapnumber.values.toList(growable: true);
  var minm = mapp[0];
  for (var i = 0; i < mapp.length; i++) {
    if (minm > mapp[i]) {
      minm = mapp[i];
    }
  }
  return "min number is: $minm";
  //print(minm);
}

void listmapName({required List listOfMap}) {
  for (var element in listOfMap) {
    print(element['name']);
  }
}

void listmapAge({required List listOfMap}) {
  for (var element in listOfMap) {
    print(element['age']);
  }
}

listmapOld({required List listOfMap}) {
  var maxm = listOfMap[0]['age'];
  for (var element in listOfMap) {
    if (element['age'] > maxm) {
      maxm = element['age'];
    }
  }
  return "the oldest person is: $maxm";
}

listmapyoung({required List listOfMap}) {
  var maxm = listOfMap[0]['age'];
  for (var element in listOfMap) {
    if (element['age'] < maxm) {
      maxm = element['age'];
    }
  }
  return "the youngest person is: $maxm";
}

listMapAdd({required List listOfMap}) {
  listOfMap.add({"name": "David", "age": 40});
  return listOfMap;
}

listMapRemove({required List listOfMap}) {
  listOfMap.removeWhere((element) => element['name'] == 'Charlie');
  return listOfMap;
}

listMapAsc({required List listOfMap}) {
  listOfMap.sort((a, b) => b['age'].compareTo(a['age']));
  return listOfMap;
}

listMapDesc({required List listOfMap}) {
  listOfMap.sort((a, b) => a['name'].compareTo(b['name']));
  return listOfMap;
}
