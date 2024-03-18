main() {
  List<int> arr = [5, 8, 9, 1, 2, 6, 4];
  bool res = c(arr, 5, 11);
  print(res);
}

c(List<int> a, int target1, int target2) {
  bool ftarget = false;
  bool ftargets = false;
  for (int i = 0; i < a.length;i++) {
    if (a[i] == target1) {
      ftarget = true;
    } else if (a[i] == target2) {
      ftargets = true;
    }
    if (ftarget && ftargets) {
      return true;
    } else {
      return false;
    }
  }
}
