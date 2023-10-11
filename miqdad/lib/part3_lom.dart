void printNames(List list){
  for(Map map in list) {
    print(map["name"]);
  }
}

void printAges(List list){
  for(Map map in list) {
    print(map["age"]);
  }
}

String findOldest(List list){
  int max = list[0]["age"];
  String name = list[0]["name"];
  for(Map element in list){
    if(element["age"] > max) {
      max = element["age"];
      name = element["name"];
    }
  }
  return name;
}

String findYoungest(List list){
  int min = list[0]["age"];
  String name = list[0]["name"];
  for(Map element in list){
    if(element["age"] < min) {
      min = element["age"];
      name = element["name"];
    }
  }
  return name;
}

int _findYoungestAge(List list){
  int min = list[0]["age"];
  for(Map element in list){
    if(element["age"] < min) {
      min = element["age"];
    }
  }
  return min;
}

List addNewPerson(List list, String name, int age){
  list.add({"name": name, "age": age});
  return list;
}

List removePerson(List list, String name) {
  list.removeWhere((e) => e["name"] == name);
  return list;
}

List sortByAge(List list) {
  List sortedList = [];
  String curYoungest;
  int length = list.length;
  for(int i = 0; i < length; i++){
    curYoungest = findYoungest(list);
    sortedList.add({"name": curYoungest, "age": _findYoungestAge(list)});
    list = removePerson(list, curYoungest);
  }
  return sortedList;
}

List sortByName(List list) {
  List sortedList = [];
  List names = [];
  for(Map map in list) {
    names.add(map["name"]);
  }
  names.sort();
  names = names.reversed.toList();

  for(int i = 0; i< names.length; i++){
    sortedList.add({"name": names[i], "age": _findAgeByName(list, names[i])});
  }
  return sortedList;
}

int? _findAgeByName(List list, String name) {
  for (Map map in list){
      if(identical(map["name"], name)){
        return map["age"];
      }
  }
  return null;
}