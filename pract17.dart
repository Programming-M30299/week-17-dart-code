void main() {
  iterateString('Hello, World!');
  iterateString('👨‍👩‍👧‍👦');
  iterateString('Café');

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
  print('The index of $substring in $text is ${text.indexOf(substring)}');

  if (text.startsWith(substring))
    print('The text starts with the substring');
  else if (text.endsWith(substring))
    print('The text ends with the substring');
  else if (text.contains(substring))
    print('The text contains the substring');
  else
    print('The text does not contain the substring');
}
