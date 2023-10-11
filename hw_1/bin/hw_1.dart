import 'package:hw_1/hw_1.dart' as hw_1;

void main() {
  List <int> listnumber = [3,6,10,9,4,30,57,1];
for (var element in listnumber) {
  print(element);
  
}

int thesum = 0;
 for (var element in listnumber) {
    thesum += element; 
   
  }
   print("sum of listnumber list is $thesum");

  int themax = 0;

  for (int number in listnumber) {
    if (number > themax) {
      themax = number; 
    }
  }
  print("the max $themax");
 
 int themin = listnumber[0];

  for (int number in listnumber) {
    if (number<themin) {
      themin = number; 
    }

}
print("the min is $themin");
 List<int> evenNumbers = [];
 for (int number in listnumber) {
    if (number.isEven) {
       evenNumbers.add(number);
     
    }
  }
   print("list of evennumbers $evenNumbers");

   Map mapNumber = {
     "One":3,
    "two":6,
    "three":10,
    "four":9,
    "five":4,
    "six":30,
    "seven":57,
    "eight":1,
   };
 
   for (var element in mapNumber.values) {
    
     print(element);
   }
   print("********************");
   for (var element in mapNumber.keys) {
    
     print(element);
   }
   int sum = 0;
   for (int value in mapNumber.values) {
    sum += value; 
  }
  print("the sum  of map $sum");
  String forkey = '';
  int forValue = 0; 

  for (var element in mapNumber.entries) {
    if (element.value > forValue) {
      forkey = element.key; 
      forValue = element.value; 
    }
  }

  print("The maximum value is: $forkey");


   String forkeymin = '';
   int forValuemin = mapNumber.values.elementAt(1); 

  for (var element in mapNumber.entries) {
    if (element.value < forValuemin) {
      forkeymin = element.key; 
      forValuemin = element.value; 
    }
  }
  print("The minimum value is: $forkeymin");


  List listOfMaps = [
  {"name": "Alice", "age": 25},
  {"name": "Bob", "age": 30},
  {"name": "Charlie", "age": 35}
];
for (var namee in listOfMaps) {
    String name = namee['name'];
    print('The Name for this person is: $name');
  }
  for (var all in listOfMaps) {
    String name = all['name'];
    int age = all['age'];
    print('The age for $name  is: $age');
  }
 int theoldest = listOfMaps[0]["age"];
 String thePerson = listOfMaps[0]["name"];
 for (var oldestone in listOfMaps) {
   if (oldestone["age"] > theoldest) {
    thePerson = oldestone["name"];
     
   }
   
 }
 print("the oldest person here is $thePerson");

int theyoungest = listOfMaps[0]["age"];
 String thePeerson = listOfMaps[0]["name"];
 for (var youngestone in listOfMaps) {
   if (youngestone["age"] < theyoungest) {
    thePeerson = youngestone["name"];
     
   }
   
 }
 print("the youngest person here is $thePeerson");

 listOfMaps.add({'name': 'David', 'age': 40});
 print(listOfMaps);

 listOfMaps.removeWhere((removeperson) => removeperson['name'] == 'Charlie');
 print(listOfMaps);

 listOfMaps.sort((f, m) => f['age'].compareTo(m['age']));
 print(listOfMaps);

 listOfMaps.sort((f, m) => m['age'].compareTo(f['age']));
 print(listOfMaps);
}

