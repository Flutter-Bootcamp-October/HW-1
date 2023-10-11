
void main() {
    num sum=0;
    
  
    List listNumber = [3,6,10,9,4,30,57,1];
    num max=listNumber[0];
    num min=listNumber[0];
    print("List Part 1:");

    for (var elements in listNumber){
      print(elements);
    }
    print("\nList Part 2:");
    for (int i=0; i<=7; i++){
      sum=sum+ listNumber[i];
    }
    print("sum is $sum");
    print("\nList Part 3:");
    for (int i=0; i<=7; i++){
      
      if (listNumber[i]> max){
        max=listNumber[i];
      }
    }
    print ("max number is $max");
    print("\nList Part 4:");

     for (int i=0; i<=7; i++){
      
      if (listNumber[i]< min){
        min=listNumber[i];
      }
    }
    print ("min number is $min");
    print ("\nList Part5:");

    for (int i=0; i<=7; i++){
      if (listNumber[i]%2==0){
        print("The even number is:");
        print(listNumber[i]);
      }
    }

 

    

    
    
    
    
 
}
