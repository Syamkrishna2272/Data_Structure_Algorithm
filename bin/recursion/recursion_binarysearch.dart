main() {
  List<int> arr = [1, 2, 3, 4, 5, 10, 25, 30, 66, 18, 28];
  int target = 25;
  var b = bsearch(arr, target, 0, arr.length - 1);
  if (b != -1) {
    print("Element found $target at index $b");
  }
}

bsearch(List<int> list, int target, int left, int right) {
  if (left > right) {
    return -1;
  }
  int mid = (left + right) ~/ 2;
  if (list[mid] == target) {
    return mid;
  } else if (list[mid] < target) {
    return bsearch(list, target, left + 1, right);
  } else {
    return bsearch(list, target, left, right - 1);
  }
}
