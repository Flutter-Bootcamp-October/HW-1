void main(){

List listOfMaps = [
  {"name": "Alice", "age": 25},
  {"name": "Bob", "age": 30},
  {"name": "Charlie", "age": 35}
];
// comparing current age and greater one
  String oldestAge = ""; //to track name
  int ageMax=0;

  String YoungestAge = ""; //to track name
  int minAge=0;  

print("\nPart1");

for( var elements in listOfMaps ){
  print(elements["name"]);
}
print("\nPart2");
for( var elements in listOfMaps ){
  print(elements["age"]);
}
print("\nPart3");
for( var elements in listOfMaps ){

  if(elements["age"]> ageMax){
    ageMax=elements["age"];
    oldestAge=elements["name"];
  }
  }
print("Name of oldest person is $oldestAge ");
print("\n Part 4");
for( var elements in listOfMaps ){

  if(elements["age"]<minAge){
    minAge=elements["age"];
    YoungestAge=elements["name"];
  }
  }
  print("Name of Youngest person is $YoungestAge ");
  print("Part5");
listOfMaps.add({"name": "David", "age": 25});
print(listOfMaps);
print("Part6");
listOfMaps.removeWhere((element) => element["name"] == "Charlie");
print(listOfMaps);
print("Part7 "); // I search about the method and i found it on stackoverflow: sort((a, b) => a. compareTo(b)));
listOfMaps.sort((a, b) => a["age"].compareTo(b["age"]));
print(listOfMaps);
print("Part8");
listOfMaps.sort((a, b) => a["name"].compareTo(b["name"]));
print(listOfMaps);

}


