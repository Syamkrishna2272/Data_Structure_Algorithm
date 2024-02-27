int findSum(List<int> arr) {
  int sum = 0;
  for (int num in arr) {
    sum += num;
  }
  return sum;
}

void main() {
  List<int> numbers = [4, 7, 2, 9, 1];
  int totalSum = findSum(numbers);
  print('Sum of all elements in the array: $totalSum');
}
