
main(){

//List Q1:

List listNumber = [3,6,10,9,4,30,57,1];

for (var element in listNumber) {
  
  print(element);
  
}


//List Q2: List <int> listNumber = [3,6,10,9,4,30,57,1];

int sum = 0;

for (var element in listNumber) {

  sum += element;
  
}

print("The sum of all elements is: $sum");

//List Q3: List <int> listNumber = [3,6,10,9,4,30,57,1];

List list1 = list1.removeWhere ((value) => element.isEven).toList();


print(list1);

//Map Q1: map <string, int>


for (var key in map) {

  print(key);
  
}

//Map Q2:

for (var value in map) {

  print(value);
  
}

//Map Q3:

int sum = 0;

for (var value in listNumber) {

  sum += value;
  
}

print("The sum of all valuses is: $sum");

//List of map Q1: List<Map<String, dynamic>> list)

for (var element in ListNumber) {

  print(element);
  
}

//List of map Q2:  List<Map<String, dynamic>> list)

for (var element in ListNumber) {

  print(element["age"]);
  
}

//List of map Q3:

Map<String, dynamic> newPerson = {"name": "David", "age": 40};
  listOfMaps.add(newPerson);

  print(listOfMaps);

//List of map Q4:

listOfMaps.removeWhere((person) => person["name"] == "Charlie");

  print(listOfMaps);

  //List of map Q5:

  listOfMaps.sort((a, b) => a["age"].compareTo(b["age"]));

  print(listOfMaps);

  //List of map Q6:

   listOfMaps.sort((a, b) => b["name"].compareTo(a["name"]));

  print(listOfMaps);










}