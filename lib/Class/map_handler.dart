class ClsMapHandler {
  void printAllMapKeys(Map<String, int> map) {
    for (var key in map.keys) {
      print(key);
    }
  }

  void printAllMapValues(Map<String, int> map) {
    for (var value in map.values) {
      print(value);
    }
  }

  int sumAllMapValues(Map<String, int> map) {
    int sum = 0;
    for (var value in map.values) {
      sum += value;
    }
    return sum;
  }

  String associatedMaximumValue(Map<String, int> map) {
    String maxKey = "";
    int maxValue = map.values.first;

    map.forEach((key, value) {
      if (value > maxValue) {
        maxValue = value;
        maxKey = key;
      }
    });

    return maxKey;
  }

  String associatedMinimumValue(Map<String, int> map) {
    String minKey = "";
    int minValue = map.values.first;

    map.forEach((key, value) {
      if (value < minValue) {
        minValue = value;
        minKey = key;
      }
    });

    return minKey;
  }
}
