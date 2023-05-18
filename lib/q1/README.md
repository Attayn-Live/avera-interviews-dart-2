### Challenge: Maximum Consecutive Ones

#### Difficulty: Easy

You are given an array of 0s and 1s, and you need to implement a function that finds the maximum
number of consecutive 1s in the array.

Your function should return the count of the maximum consecutive 1s.

### Function Signature:

```dart
int findMaxConsecutiveOnes(List<int> nums) {
  // Implementation goes here
  return 0;
}
```

#### Input:

* A list of integers `nums` representing the array of 0s and 1s. The list will contain only 0s and
  1s. The length of the list will be between 1 and 10^5.

#### Output:

The function should return an integer representing the count of the maximum consecutive 1s in the
array.

### Examples:

```dart
findMaxConsecutiveOnes([1, 1, 0, 1, 1, 1]); // Output: 3 (The maximum consecutive 1s are [1, 1, 1] with a count of 3.)

findMaxConsecutiveOnes([0, 1, 0, 1, 0, 1, 1, 0]); // Output: 2 (The maximum consecutive 1s are [1, 1] with a count of 2.)

findMaxConsecutiveOnes([0, 0, 0]); // Output: 0 (There are no consecutive 1s in the array.)

findMaxConsecutiveOnes([1]); // Output: 1 (The maximum consecutive 1s are [1] with a count of 1.)
```

The challenge requires finding the maximum number of consecutive 1s in the array and returning the
count. Test cases cover different scenarios, including arrays with consecutive 1s, arrays with no
consecutive 1s, and arrays with only one element.