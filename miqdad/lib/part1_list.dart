void printAllElements(List list) {
  for(int number in list) {
    print(number);
  }
}

int sumElements(List list) {
  int sum = 0;
  for(int number in list) {
    sum += number;
  }
  return sum;
}

int maxElement(List list) {
  int max = list[0];
  for(int number in list) {
    if(number > max){
      max = number;
    }
  }
  return max;
}

int minElement(List list) {
  int min = list[0];
  for(int number in list) {
    if(number < min){
      min = number;
    }
  }
  return min;
}

void printEven(List list) {
  for(int number in list){
    if(number % 2 == 0) {
      print(number);
    }
  }
}