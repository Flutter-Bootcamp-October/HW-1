class ClsListHandler {
  bool _isEven(int number) {
    return number % 2 == 0;
  }

  void printAllListNumber(List<int> listNumber) {
    for (var i = 0; i < listNumber.length; i++) {
      print(listNumber[i]);
    }
  }

  int sumAllListNumber(List<int> listNumber) {
    int sum = 0;
    for (var i = 0; i < listNumber.length; i++) {
      sum += listNumber[i];
    }
    return sum;
  }

  int findTheMaximumNumberInList(List<int> listNumber) {
    int max = 0;
    for (var i = 0; i < listNumber.length; i++) {
      if (max < listNumber[i]) {
        max = listNumber[i];
      }
    }
    return max;
  }

  int findTheMinimumNumberInList(List<int> listNumber) {
    if (listNumber.isEmpty) {
      throw Exception("List is empty.");
    }

    int min = listNumber[0];
    for (var i = 1; i < listNumber.length; i++) {
      if (min > listNumber[i]) {
        min = listNumber[i];
      }
    }
    return min;
  }

  void printAllTheEvenNumber(List<int> listNumber) {
    for (var i = 0; i < listNumber.length; i++) {
      if (_isEven(listNumber[i])) {
        print(listNumber[i]);
      }
    }
  }
}
