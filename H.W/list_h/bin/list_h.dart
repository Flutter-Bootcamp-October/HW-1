// =================List===================
int sum(List<int> listNumber) {
  int count = 0;
  for (int i = 0; i < listNumber.length; i++) {
    count += listNumber[i];
  }
  return count;
}

int max(List<int> listNumber) {
  int num = listNumber[0];
  for (int i = 0; i < listNumber.length; i++) {
    if (num < listNumber[i]) num = listNumber[i];
  }
  return num;
}

int min(List<int> listNumber) {
  int num = listNumber[0] ;
  for (int i = 0; i < listNumber.length; i++) {
    if (num > listNumber[i]) num = listNumber[i];
  }
  return num;
}

void printEvent(List listNumber) {
  for (int i = 0; i < listNumber.length; i++) {
    if (listNumber[i] % 2 == 0) print(listNumber[i]);
  }
}

void main() {
  List<int> listNumber = [3, 6, 10, 9, 4, 30, 57, 1];
  print("=====print Number=====") ;
  for (int i = 0; i < listNumber.length; i++) {
    print(listNumber[i]);
  }

  print("=====sum Number=====") ;
  int result = sum(listNumber);
  print(result);

  print("=====Max Number=====") ;
  int maximum = max(listNumber);
  print(maximum);

  print("=====Min Number=====") ;
  int minimum = min(listNumber);
  print(minimum);

print("=====Event Number=====") ;
printEvent(listNumber); 

}
  

 
   

   
 
