
void main() {
  List listOfMaps = [
  {"name": "Alice", "age": 25},
  {"name": "Bob", "age": 30},
  {"name": "Charlie", "age": 35}
];
  print("=======Print nams======");
for (var value in listOfMaps) {
  print("${value["name"]}");
}
print("=======Print ages======");
for (var value in listOfMaps) {
  print("${value["age"]}");
}
print("=======Add a new person======");
listOfMaps.add({"name": "David", "age": 40});
print(listOfMaps);


}
