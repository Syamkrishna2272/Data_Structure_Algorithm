main() {
  List<String> ar = ['orange', 'strawberry', 'banana'];
  String longest = find(ar);
  print(longest);
}

String find(List<String> ar) {
  String long = '';
  for (String word in ar) {
    if (word.length > long.length) {
      long = word;
    }
  }
  return long;
}
