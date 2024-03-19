main() {
  List<int> arr = [1, 2, 5, 8, 9, 6, 3];
  var res = c(arr, 5, 2);
  print(res);
}

c(List<int> arr, int t1, int t2) {
  bool target1 = false;
  bool target2 = false;
  for (int i = 0; i < arr.length; i++) {
    if (arr[i] == t1) {
      target1 = true;
    }
    if (arr[i] == t2) {
      target2 = true;
    }
  }
  return target1 && target2;
}
