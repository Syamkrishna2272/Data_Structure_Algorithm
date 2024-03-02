main() {
  List<int> arr = [10, 20, 30, 40, 50, 60, 70, 80, 90];
  print("The array element is $arr");
  var res = binary(arr, 80);
  print("the index of the element is $res ");
}

binary(List arr, int target) {
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
