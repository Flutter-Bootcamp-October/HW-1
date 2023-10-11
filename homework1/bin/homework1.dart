import 'dart:io';
import 'dart:math';
void main(List<String> arguments) {

first();
second();
thierd();

}

first(){
  List<int> listNumber = [3,6,10,9,4,30,57,1];
  int sum=0 ;
  int max=listNumber[0];
  int min=listNumber[0];
  List<int> even = [];

  for (var element in listNumber) {

    print(element);// Print all the elements of a given list using a for loop.

    sum=sum+element; // Calculate the sum of all the elements in a given list using a for loop.
    
    // Find the maximum element in a given list using a for loop.
    if (element > max) {
      max = element;
     }

    // Find the minimum element in a given list using a for loop.
    if (element < min) {
      min = element;
      }

    // Print all the even elements of a given list using a for loop.
    even=listNumber.where((element) => element.isEven).toList();
  }
print("the sum is: $sum");
print("the min is $min the max is $max");
print("the even is: $even");
}

second(){
  Map<String,int> mapNumber = {
    "One":3,
    "two":6,
    "three":10,
    "four":9,
    "five":4,
    "six":30,
    "seven":57,
    "eight":1
  };
  int sum=0;
  int max=0;
  int? min=null;
  var keymax;
  var minKey;


// Print all the keys in a given map using a for loop.
mapNumber.keys.forEach((key) { print(key);});

// Print all the values in a given map using a for loop.
mapNumber.values.forEach((value) { print(value);});

// Calculate the sum of all the values in a given map using a for loop.
mapNumber.values.forEach((value) { sum+=value;});
print("the sum is $sum");

// Find the key associated with the maximum value in a given map using a for loop.
for (var element in mapNumber.entries) {
  if (element.value > max) {
     max = element.value;
    keymax = element.key;
  }
}
print("the max is $max and key is $keymax");


//Find the key associated with the minimum value in a given map using a for loop.
for (var element in mapNumber.entries) {
  if (min == null || element.value < min) {
  min = element.value;
  minKey = element.key;
  }
}
print("the min is $min and key is $minKey");

}

thierd(){

List listOfMaps = [
  {"name": "Alice", "age": 25},
  {"name": "Bob", "age": 30},
  {"name": "Charlie", "age": 35}
];

// Print the name of each person in the List of Maps created above using a for loop.

 for (var person in listOfMaps) {
    print(person["name"]);
  }


// Print the age of each person in the List of Maps created above using a for loop.
 for (var person in listOfMaps) {
    print(person["age"]);
  }

// Find the oldest person in the List of Maps created above using a for loop.

var max=listOfMaps.first;
listOfMaps.forEach((element) {
  if(element['age']>max['age']){
    max=element;
  }
});
print("the oldest person is $max");
// Find the youngest person in the List of Maps created above using a for loop.
var min=listOfMaps.first;
listOfMaps.forEach((element) {
  if(element['age']<min['age']){
    min=element;
  }
});
print("the oldest person is $min");

// Add a new person to the List of Maps created above. The new person should have the name "David" and age 40.
Map newPerson = { "name": "David", "age": 40,};
listOfMaps.add(newPerson);
print(listOfMaps);

// Remove the person with the name "Charlie" from the List of Maps created above.
listOfMaps.removeWhere((element) => element["name"]== "Charlie");
print(listOfMaps);

// Sort the List of Maps created above by age in ascending order.
listOfMaps.sort((x, y) => x['age'].compareTo(y['age']));
print(listOfMaps);

// Sort the List of Maps created above by name in descending order.
listOfMaps.sort((x, y) => y['name'].compareTo(x['name']));
print(listOfMaps);

}