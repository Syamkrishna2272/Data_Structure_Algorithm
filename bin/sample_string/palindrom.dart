void main() {
  String a = "malayalam";
  String b = a.split('').reversed.join();
  if (a == b) {
    print("palindrome");
  } else {
    print("Not palindrome");
  }
}

// void main() {
//   String a = "abba";
//   String b = '';
//   for (int i = a.length - 1; i >= 0; i--) {
//     b = b + a[i];
//   }
//   if (a == b) {
//     print("palindrome");
//   } else {
//     print("Not palindrome");
//   }
// }

