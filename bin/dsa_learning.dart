main() {
  List<int> arr = [10, 25, 30, 32, 40, 45, 55, 60];
  int tar=45;
  var res = bc(arr, tar);
  if(res!=null){
    print("element $tar index is $res");
  }else{
    print("no element in the list");
  }
}

bc(List<int> arr, int target) {
  int l = 0;
  int r = arr.length - 1;
  while (l < r) {
    int mid = (l + r) ~/ 2;
    if (target == arr[mid]) {
      return mid;
    } else if (target > arr[mid]) {
      l = mid + 1;
    } else {
      r = mid - 1;
    }
  }
  return -1;
}
