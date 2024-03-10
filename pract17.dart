void main() {
  iterateString('Hello, World!');
  iterateString('👨‍👩‍👧‍👦');
  iterateString('Café');

  String postcode = 'PO13HF';
  int startIndex = 3, endIndex = 5;
  print('The substring of "$postcode" from $startIndex to $endIndex is ' +
      postcode.substring(startIndex, endIndex));
  print('The substring of "$postcode" from $startIndex to the end is ' +
      postcode.substring(startIndex));
  print('The last 3 characters of "$postcode" are ' +
      postcode.substring(postcode.length - 3));

  String line = 'Stella! Hey Stella!';
  print(line.toUpperCase());
  print(line.toLowerCase());

  stringChecker('Hello, World!', 'World');
  stringChecker('Hello, World!', 'World!');
  stringChecker('Hello, World!', 'Hello, World!');
  stringChecker('Hello, World!', 'o');
  stringChecker('Hello, World!', 'Moon');

  // print('Hello, World!');
  // List<int> numbers = [1, 2, 3, 4, 5];
  // var squares = numbers.map((number) => number * number);
  // print(squares.toList()); // Output: [1, 4, 9, 16, 25]

  // numbers = [1, 2, 3, 4, 5];
  // var sum = numbers.reduce((value, element) => value + element);
  // print(sum); // Output: 15

  // Set<int> numbersSet = {1, 2, 3, 4, 5};
  // var evenNumbers = numbersSet.where((number) => number % 2 == 0);
  // print(evenNumbers.toSet()); // Output: {2, 4}

  // Map<String, int> ages = {'Alice': 20, 'Bob': 25, 'Charlie': 30};
  // ages.forEach((key, value) => print('$key is $value years old'));
  // // Output: Alice is 20 years old
  // //         Bob is 25 years old
  // //         Charlie is 30 years old
}

void iterateString(String text) {
  for (int i = 0; i < text.length; i++) {
    var char = text[i];
    print(char);
  }
}

void stringChecker(String text, String substring) {
  String output =
      'The index of "$substring" in "$text" is ${text.indexOf(substring)} and ';

  if (text.startsWith(substring))
    output += 'the text starts with the substring';
  else if (text.endsWith(substring))
    output += 'the text ends with the substring';
  else if (text.contains(substring))
    output += 'the text contains the substring';
  else
    output += 'the text does not contain the substring';

  print(output);
}
