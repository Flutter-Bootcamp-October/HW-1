class ClsPeopleHandler {
  void printNames(List<Map<String, dynamic>> people) {
    for (var person in people) {
      print("Name: ${person["name"]}");
    }
  }

  void printAges(List<Map<String, dynamic>> people) {
    for (var person in people) {
      print("Age: ${person["age"]}");
    }
  }

  String findOldestPerson(List<Map<String, dynamic>> people) {
    int maxAge = 0;
    String oldestPersonName = "";
    for (var person in people) {
      if (person["age"] > maxAge) {
        maxAge = person["age"];
        oldestPersonName = person["name"];
      }
    }
    return oldestPersonName;
  }

  String findYoungestPerson(List<Map<String, dynamic>> people) {
    int minAge = people[0]["age"];
    String youngestPersonName = people[0]["name"];
    for (var person in people) {
      if (person["age"] < minAge) {
        minAge = person["age"];
        youngestPersonName = person["name"];
      }
    }
    return youngestPersonName;
  }

  void addPerson(List<Map<String, dynamic>> people, String name, int age) {
    Map<String, dynamic> newPerson = {"name": name, "age": age};
    people.add(newPerson);
  }

  void removePersonByName(List<Map<String, dynamic>> people, String name) {
    people.removeWhere((person) => person["name"] == name);
  }

  void printNameAndAge(List<Map<String, dynamic>> people) {
    for (var person in people) {
      print("Name: ${person["name"]}");
      print("Age: ${person["age"]}");
    }
  }

  void sortByAgeAscending(List<Map<String, dynamic>> people) {
    people.sort((a, b) => a["age"].compareTo(b["age"]));
  }

  void sortByNameDescending(List<Map<String, dynamic>> people) {
    people.sort((a, b) => b["name"].compareTo(a["name"]));
  }
}
