main() {
  List<int> arr = [1, 2, 3, 4, 5, 6, 7, 10, 15, 18, 19, 20, 23];
  int target = 23;
  var res = bcheck(arr, target, 0, arr.length - 1);
  if (res != -1) {
    print("element found $target in the index $res");
  } else {
    print("No element");
  }
}

bcheck(List<int> a, int target, int left, int right) {
  if (left > right) {
    return -1;
  }
  int mid = (left + right) ~/ 2;
  if (a[mid] == target) {
    return mid;
  } else if (a[mid] < target) {
    return bcheck(a, target, left + 1, right);
  } else {
    return bcheck(a, target, left, right - 1);
  }
}
