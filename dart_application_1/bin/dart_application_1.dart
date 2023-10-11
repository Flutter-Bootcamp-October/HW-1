


void main(List<String> arguments) {

  List <int> listNumber = [3,6,10,9,4,30,57,1];
  Map mapNumber = {
    "One": 3,
    "two": 6,
    "three": 10,
    "four": 9,
    "five": 4,
    "six": 30,
    "seven": 57,
    "eight": 1,
  };

  List listOfMaps = [
  {"name": "Alice", "age": 25},
  {"name": "Bob", "age": 30},
  {"name": "Charlie", "age": 35}
];

  print("------------Part 1------------------");
  print("====================================");


  print("Elements of the list are: ");
  printList(listNumber);
  
  print("Sum of the list is: ${sumList(listNumber)} ");
  print("The Max number of the list is: ${ maxList(listNumber)}");
  

  print("The Min number of the list is: ${minList(listNumber)}");

  print("The even number of the list are: ${evenList(listNumber)}");

  print("====================================");
  print("------------Part 2------------------");
  print("====================================");

  print("Map keys are: ");
  printMapKey(mapNumber);

  print("Map values are: ");
  printMapValues(mapNumber);

  print("Map sum is: ");
  mapSum(mapNumber);

  print("Map max value key is: ");
  mapMax(mapNumber);

  print("Map min value key is: ");
  mapMin(mapNumber);

  print("====================================");
  print("------------Part 3------------------");
  print("====================================");

  print("names in the list of map are: ");
  printListMapNames(listOfMaps);

  print("age of persons in the list of map are: ");
  printListMapAge(listOfMaps);

  print("The oldest persons in the list of map is: ");
  printOldest(listOfMaps);

  print("The youngest persons in the list of map is: ");
  printYoungest(listOfMaps);

  print("The new person added to the list of map is: ");
  addPerson(listOfMaps, "David", 40);

  print("The person have been removed from the list of map is: ");
  removePerson(listOfMaps, "Charlie");

  print("The list of map sorted by age in ascending order: ");
  ageSort(listOfMaps);

  print("The list of map sorted by name in descending order: ");
  nameSort(listOfMaps);

}



void printList( List L){
  for (var element in L) {
    print(element);
  }
  
}

int sumList(List<int> L){
  int sum = 0;
    for (var i = 0; i < L.length; i++) {
      sum = sum +L[i];
}
    return sum;
}

int maxList(List<int> L){
   int max = L[0];
   for (var i = 0; i < L.length; i++) {
        if (max < L[i]) {
          max = L[i];
        }
}return max;
}

int minList(List<int> L){
   int max = L[0];
   for (var i = 0; i < L.length; i++) {
        if (max > L[i]) {
          max = L[i];
        }
}return max;
}

List<int> evenList(List<int> L){
  List <int> evenNum = [];
  for (var i = 0; i < L.length; i++){
    if(L[i].isEven){
      evenNum.add(L[i]);
    }
  }
return evenNum;
}


void printMapKey( Map M){
  for (var key in M.keys) {
    print(key);
  }
  
}

void printMapValues( Map M){
  for (var value in M.values) {
    print(value);
  }
  
}

int mapSum(Map M){
  int sum = 0;
  for (int value in M.values) {
    sum = sum + value;
  }
  return sum;
}

void mapMax(Map M){
 int maxNum = M.values.first;
 var maxKey = "";
 for (var value in M.entries) {
   if(value.value > maxNum){
    maxNum = value.value;
    maxKey = value.key;
   }
 }
 print(maxKey);
}


void mapMin(Map M){
 int minNum = M.values.first;
 var minKey = "";
 for (var value in M.entries) {
   if(value.value < minNum){
    minNum = value.value;
    minKey = value.key;
   }
 }
 print(minKey);
}

void printListMapNames(List L){
    for (var element in L) {
      print(element["name"]);
    }
  }
void printListMapAge(List L){
    for (var element in L) {
      print(element["age"]);
    }
  }


printOldest(List L){
  var oldestAge = L[0]["age"];
  var oldestName = L[0]["name"];

  for (var element in L){
        if (element["age"] > oldestAge) {
          oldestName = element["name"];
          oldestAge = element["age"];          
        }
        
      }
      print(oldestName);
    }


printYoungest(List L){
 var youngestAge = L[0]["age"];
var youngestName = L[0]["name"];

  for (var element in L){
        if (element["age"] < youngestAge) {
          youngestName = element["name"];
          youngestAge = element["age"];          
        }
        
      }
      print(youngestName);
}

void addPerson(List L, String n, int a){
  L.add({"name": n, "age": a});
  print(L);
}

void removePerson(List L, String n){
  L.removeWhere((element) => element["name"] == n);
  print(L);
}

void ageSort(List L){
  L.sort((a,b)=> a["age"].compareTo(b["age"]));
  print(L);
}

void nameSort(List L){
  L.sort((b,a)=> a["name"].compareTo(b["name"]));
  print(L);
}