import 'dart:math';

void main() {
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

  num sum=0;
  String maximumkey="";
  int maxivalue=0;

  String minkey="";
  int minvalue=0;


  print("\npart1");
  //print all keys
  for( var element in mapNumber.keys){
    print(element);
  }
   print("\npart2");
   //print all values
  for( var element in mapNumber.values){
    print(element);
  }
  print("\n Part3");
  for (var elementsSum in mapNumber.values){
    
      sum=sum+elementsSum;
    }
  print("Summation is $sum");
  print("\npart4");

  for(var elements in mapNumber.entries ){
    if(elements.value> maxivalue){
      maxivalue=elements.value;
      maximumkey=elements.key;
    }
  }
  print("max  is $maximumkey");
  print("\npart5");
  //Note after search I found that entries is method to loop in value and key as pairs:
  for(var elementsMin in mapNumber.entries ){
    if(elementsMin.value< maxivalue){
      minvalue=elementsMin.value;
      minkey=elementsMin.key;
    }
  }
  print("min  is $minkey");

  




}