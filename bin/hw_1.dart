import 'package:hw_1/Class/list_handler.dart';
import 'package:hw_1/Class/map_handler.dart';
import 'package:hw_1/Class/people_handler.dart';

void main() {
// List Operations
  List<int> listNumber = [3, 6, 10, 9, 4, 30, 57, 1];
  ClsListHandler listHandler = ClsListHandler();

  print("List Operations:");
  listHandler.printAllListNumber(listNumber);
  print("Sum: ${listHandler.sumAllListNumber(listNumber)}");
  print("Maximum: ${listHandler.findTheMaximumNumberInList(listNumber)}");
  print("Minimum: ${listHandler.findTheMinimumNumberInList(listNumber)}");
  print("Even Numbers:");
  listHandler.printAllTheEvenNumber(listNumber);

  // Map Operations
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
  ClsMapHandler mapHandler = ClsMapHandler();

  print("\nMap Operations:");
  mapHandler.printAllMapKeys(mapNumber);
  mapHandler.printAllMapValues(mapNumber);
  print("Sum of all values: ${mapHandler.sumAllMapValues(mapNumber)}");
  print(
      "Key associated with the maximum value: ${mapHandler.associatedMaximumValue(mapNumber)}");
  print(
      "Key associated with the minimum value: ${mapHandler.associatedMinimumValue(mapNumber)}");

  // List of Maps Operations
  List<Map<String, dynamic>> listOfMaps = [
    {"name": "Alice", "age": 25},
    {"name": "Bob", "age": 30},
    {"name": "Charlie", "age": 35},
  ];
  ClsPeopleHandler peopleHandler = ClsPeopleHandler();

  print("\nList of Maps Operations:");

  print("Names:");
  peopleHandler.printNames(listOfMaps);

  print("\nAges:");
  peopleHandler.printAges(listOfMaps);

  print("Oldest person: ${peopleHandler.findOldestPerson(listOfMaps)}");
  print("Youngest person: ${peopleHandler.findYoungestPerson(listOfMaps)}");

  // Add a new person
  peopleHandler.addPerson(listOfMaps, "David", 40);
  print("Added a new person 'David' with age 40.");

  // Remove a person by name
  peopleHandler.removePersonByName(listOfMaps, "Charlie");
  print("Removed the person 'Charlie'.");

  // Sort the list of maps
  peopleHandler.sortByAgeAscending(listOfMaps);
  print("List of Maps sorted by age in ascending order:");
  peopleHandler.printNameAndAge(listOfMaps);

  peopleHandler.sortByNameDescending(listOfMaps);
  print("List of Maps sorted by name in descending order:");
  peopleHandler.printNameAndAge(listOfMaps);
}
