int findMaxConsecutiveOnes(List<int> nums) {
  // Implementation goes here
  int max = 0;
  int current = 0;

  for (int num in nums) {
    if (num == 1) {
      current++;
      max = current > max ? current : max;
    } else {
      current = 0;
    }
  }

  return max;
}
