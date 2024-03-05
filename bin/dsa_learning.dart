main() {
  List arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  var res=checking(arr, 9);
  print(res);
}

checking(List arr, int target) {
  int left = 0;
  int right = arr.length - 1;
  while (left < right) {
    int mid = (left + right) ~/ 2;
    if (target == arr[mid]) {
      return mid;
    } else if (target == arr[left]) {
      return left;
    } else if (target == arr[right]) {
      return right;
    } else if (target == arr[mid]) {
      right = mid - 1;
    } else {
      left = mid + 1;
    }
  }
}
