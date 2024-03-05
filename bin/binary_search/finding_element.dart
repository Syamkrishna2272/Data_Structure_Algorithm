main() {
  List<int> arr = [10, 20, 30, 40, 50, 60, 70, 80, 90];
  print("The array element is $arr");
  var res = binary(arr, 100);
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


// int binarySearch(List<int> arr, int target) {
//   int low = 0;
//   int high = arr.length - 1;

//   while (low <= high) {
//     int mid = (low + high) ~/ 2; // Calculate the middle index
//     if (arr[mid] == target) {
//       return mid; // Element found, return its index
//     } else if (arr[mid] < target) {
//       low = mid + 1; // Search in the right half
//     } else {
//       high = mid - 1; // Search in the left half
//     }
//   }

//   return -1; // Element not found
// }

// void main() {
//   // Sorted array
//   List<int> sortedArray = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

//   // Element to search for
//   int targetElement = 7;

//   // Perform binary search
//   int result = binarySearch(sortedArray, targetElement);

//   // Display the result
//   if (result != -1) {
//     print("Element $targetElement found at index $result.");
//   } else {
//     print("Element $targetElement not found in the array.");
//   }
// }
