int findSmallestMissingPositive(List<int> arr) {
  // Implementation goes here
  int length = arr.length;

  int positive = 0;
  for (int i = 0; i < length; i++) {
    if (arr[i] > 0) {
      int temp = arr[i];
      arr[i] = arr[positive];
      arr[positive] = temp;
      positive++;
    }
  }

  for (int i = 0; i < positive; i++) {
    int num = arr[i].abs();
    if (num <= positive) {
      arr[num - 1] = -arr[num - 1].abs();
    }
  }

  for (int i = 0; i < positive; i++) {
    if (arr[i] > 0) {
      return i + 1;
    }
  }

  return positive + 1;
}
