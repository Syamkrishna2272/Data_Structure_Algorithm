binaryChecking(List arr, int target) {
  int l = 0;
  int r = arr.length - 1;
  while (l < r) {
    int min = (l + r) ~/ 2;
    if (target == arr[min]) {
      return min;
    } else if (target == arr[l]) {
      return l;
    } else if (target == arr[r]) {
      return r;
    } else if (target < arr[min]) {
      r = min - 1;
    } else {
      l = min + 1;
    }
  }
}

main() {
  List arr = [1, 2, 3, 4, 5, 6, 7, 8];
  var res = binaryChecking(arr, 7);
  print(res);
}
