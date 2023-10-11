import 'package:miqdad/part1_list.dart' as list;
import 'package:miqdad/part2_map.dart' as map;

void main(List<String> arguments) {
  //Part 1: List
  List listNumber = [3,6,10,9,4,30,57,1];
  print("1. Print all the elements of a given list using a for loop.");
  list.printAllElements(listNumber);
  print("-----\n2. Calculate the sum of all the elements in a given list using a for loop.");
  print(list.sumElements(listNumber));
  print("-----\n3. Find the maximum element in a given list using a for loop.");
  print(list.maxElement(listNumber));
  print("-----\n4. Find the minimum element in a given list using a for loop.");
  print(list.minElement(listNumber));
  print("-----\n5. Print all the even elements of a given list using a for loop.");
  list.printEven(listNumber);
  
  //Part 2: Map
  print("------------------------------------");
    Map mapNumber = {
    "One":3,
    "two":6,
    "three":10,
    "four":9,
    "five":4,
    "six":30,
    "seven":57,
    "eight":1
  };
  print("1. Print all the keys in a given map using a for loop.");
  map.printKeys(mapNumber);
  print("-----\n2. Print all the values in a given map using a for loop.");
  map.printValues(mapNumber);
  print("-----\n3. Calculate the sum of all the values in a given map using a for loop.");
  print(map.sumValues(mapNumber));
  print("-----\n4. Find the key associated with the maximum value in a given map using a for loop.");
  print(map.maxValue(mapNumber));
  print("-----\n5. Find the key associated with the minimum value in a given map using a for loop.");
  print(map.minValue(mapNumber));
  
}