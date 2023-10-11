import 'dart:math';

void main(List<String> arguments) {
List listNumber = [3,6,10,9,4,30,57,1];
printElement(listNumber);
print(calculateSum(listNumber));
print(maxNumber(listNumber));
print(minNumber(listNumber));
evenNumber(listNumber);

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
  printKeys(mapNumber);
  printValues(mapNumber);
  print(calculateSumValues(mapNumber));
  print(findkeyWithMaxVal(mapNumber));
  print(findkeyWithMinVal(mapNumber));

 List listOfMaps = [
  {"name": "Alice", "age": 25},
  {"name": "Bob", "age": 30},
  {"name": "Charlie", "age": 35}
];

printNameEachPerson(listOfMaps);
printAgeEachPerson(listOfMaps);
print(findOldestPerson(listOfMaps));
print(findYoungestPerson(listOfMaps));
addNewPerson(listOfMaps);
removePerson(listOfMaps);
sortListAge(listOfMaps);
sortListName(listOfMaps);

}


printElement (List listNumber){
   print("-----------Print Element-----------");

   for (var element in listNumber) {
     print(element);
   }
}

int calculateSum(List listNumber){
   print("-----------Calculate Sum-----------");

     int sum=0;
     for (int element in listNumber) {
       sum=sum+element;
     }
     return sum;
}

int maxNumber(List listNumber){
   print("----------Max Number-----------");
var maxNum=listNumber[0];
   for (var element in listNumber) {
     if(element>maxNum){
      maxNum=element;
     }
   }
    return maxNum;
}
 
 int minNumber(List listNumber){
   print("-------------Min Number-----------");
var minNum=listNumber[0];
for (var element in listNumber) {
  if(element<minNum){
minNum=element;
  }
}
return minNum;
 }
 
 
 evenNumber(List listNumber){
   print("---------Even Number----------");
for(int i=0; i<listNumber.length; i++){
  if(listNumber[i].isEven){
    print(listNumber[i]);
  }
 }  
}




printKeys(Map mapNumber){
print("---------Print Keys----------");
for (var element in mapNumber.keys) {
  print(element);
}
}

printValues(Map mapNumber){
print("---------Print values----------");
for (var element in mapNumber.values) {
  print(element);
}
}

int calculateSumValues(Map mapNumber){
print("---------Calculate Sum values----------");
int sumNum=0;
for (int element in mapNumber.values) {
  sumNum=sumNum+element;
}
return sumNum;
}

String findkeyWithMaxVal(Map mapNumber){
print("---------Find key With maximum value ----------"); 
  var thevalue=3;
    var thekey;

    mapNumber.forEach((k,v){
      if(v>thevalue) {
        thevalue = v;
        thekey = k;
      }
    });

    return "The key is:$thekey is maximum value $thevalue";
}

String findkeyWithMinVal(Map mapNumber){
print("---------Find key With minimum value ----------");
  var thevalue=3;
    var thekey;

    mapNumber.forEach((k,v){
      if(v<thevalue) {
        thevalue = v;
        thekey = k;
      }
    });

    return "The key is:$thekey is minimum value $thevalue";
}




printNameEachPerson(List listOfMaps){
  print("-----------Print Name Each Person-----------");
for (var element in listOfMaps) {
  print(element['name']);
}
}

printAgeEachPerson(List listOfMaps){
print("-----------Print Age Each Person-----------");
for (var element in listOfMaps) {
  print(element['age']);

}
}

String findOldestPerson(List listOfMaps){
  print("-----------Find Oldest Person-----------");
   var age=0;
var name="";
for (var element in listOfMaps) {
  if(element['age']>age){
age=element['age'];
name=element['name'];
  }
}
return "{$name} is oldest person, and {$age} old";
}


String findYoungestPerson(List  listOfMaps){
    print("-----------Find Youngest Person-----------");
 var age=listOfMaps[0]['age'];
var name=listOfMaps[0]['name'];
for (var element in listOfMaps) {
  if(element['age']<age){
age=element['age'];
name=element['name'];
  }
  
}
return "{$name} is Youngest person, and {$age} old";
}

addNewPerson(List  listOfMaps){
   print("-----------Add New Person-----------");
listOfMaps.addAll([{"name": "David", "age": 40}]);
print(listOfMaps);
}

removePerson(List  listOfMaps){
     print("-----------Remove Person-----------");
listOfMaps.removeWhere((element) => element['name']=="Charlie");
print(listOfMaps);
}
sortListAge(List listOfMaps){
  print("-----------Sort List Age-----------");
listOfMaps.sort((a,b)=>a['age'].compareTo(b['age']));
print(listOfMaps); 
}
sortListName(List listOfMaps){
  print("-----------Sort List Name-----------");
listOfMaps.sort((b,a)=>a['name'].compareTo(b['name']));
print(listOfMaps);

}
