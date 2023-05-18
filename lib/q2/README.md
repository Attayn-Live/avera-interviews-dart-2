## Challenge: Smallest Missing Positive Integer

### Difficulty: Medium

You are given an unsorted integer array. Your task is to implement a function that finds and returns
the smallest missing positive integer in the array.

Your function should return the smallest positive integer that does not exist in the array. If all
positive integers from 1 to the maximum value in the array are present, the function should return
the maximum value plus one.

### Function Signature:

```dart
int findSmallestMissingPositive(List<int> arr) {
  // Implementation goes here
  return 0;
}
```

### Input:

The `arr` parameter is an unsorted integer array. The length of the array is between 1 and
10^5 `(1 <= arr.length <= 10^5)`. The array can contain positive and negative integers.

### Output:

The function should return the smallest missing positive integer in the array.

### Examples:

```dart
findSmallestMissingPositive([1,2,0]); // Output: 3 (The smallest missing positive integer is 3)
findSmallestMissingPositive([3, 4, -1, 1]); // Output: 2 (The smallest missing positive integer is 2)
findSmallestMissingPositive([7, 8, 9, 11, 12]); // Output: 1 (The smallest missing positive integer is 1)
findSmallestMissingPositive([-1, -2, -3]); // Output: 1 (The smallest missing positive integer is 1)
findSmallestMissingPositive([1, 2, 3,4]); // Output: 5 (All positive integers from 1 to the maximum value 4 are present, so the smallest missing positive integer is 5)
```

In the first example, the smallest missing positive integer is `3` because the array does not
contain it.

In the second example, the smallest missing positive integer is `2`.

In the third example, the smallest missing positive integer is `1` because none of the positive
integers from `1` to the maximum value in the array are present.

In the fourth example, the smallest missing positive integer is `1` because all the integers in the
array are negative.

In the fifth example, the smallest missing positive integer is `5` because all positive integers
from 1 to the maximum value 4 are present.