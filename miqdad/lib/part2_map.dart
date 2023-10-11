void printKeys(Map map) {
  for(String element in map.keys){
    print(element);
  }
}

void printValues(Map map) {
  for(int element in map.values){
    print(element);
  }
}

int sumValues(Map map) {
  int sum = 0;
  for(int element in map.values){
    sum += element;
  }
  return sum;
}

int maxValue(Map map){
  int max = map.values.first;
  for(int number in map.values) {
    if(number > max){
      max = number;
    }
  }
  return max;
}

int minValue(Map map){
  int min = map.values.first;
  for(int number in map.values) {
    if(number < min){
      min = number;
    }
  }
  return min;
}

