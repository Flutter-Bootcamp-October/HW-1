import 'package:miqdad/part1_list.dart' as list;
void main(List<String> arguments) {
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
}