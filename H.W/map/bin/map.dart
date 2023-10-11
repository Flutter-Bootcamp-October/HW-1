

int sum(Map<String,int> mapNumber) {
  int count = 0;
  for (var valu in mapNumber.values) {
    count += valu; 
  }
    return count;
} 
 
void main() {
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
    print("=======Print keys======");
    for (var key in mapNumber.keys) {
       print(key);
      
    }
    print("=======Print Valus======");
    for (var valu in mapNumber.values) {
      print(valu);
      
    }
print("=======Print sum======");
int result = sum(mapNumber);
  print(result);
print("=======Print maximum value======");
int maxValue=0;
for (var entry in mapNumber.entries) {
  if(entry.value>maxValue){
    maxValue=entry.value;
    print("$maxValue");
}
  }
print("=======Print minimum value======");
int minValue=0;
for (var entry in mapNumber.entries) {
  if(entry.value<maxValue){
    print(" $minValue");
}
  }

}