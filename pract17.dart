import 'dart:io';

void main() {
  print('Uncomment the code in this file to run it');

  // iterateString('Hello, World!');
  // iterateString('👨‍👩‍👧‍👦');
  // iterateString('Café');

  // substringDemo();

  // String line = 'Stella! Hey Stella!';
  // print(line.toUpperCase());
  // print(line.toLowerCase());

  // stringChecker('Hello, World!', 'World');
  // stringChecker('Hello, World!', 'World!');
  // stringChecker('Hello, World!', 'Hello, World!');
  // stringChecker('Hello, World!', 'o');
  // stringChecker('Hello, World!', 'Moon');

  // String littleWomen = 'Jo and Beth and Amy and Meg';
  // for (String name in littleWomen.split(' and ')) {
  //   print(name);
  // }

  // stringSplitDemo();

  // listDemo();
}

void listDemo() {
  List<int> marks = [100, 60, 40, 87, 54];
  print('In the first in-class test, I got %${marks.first}');
  print('In the second in-class test, I got %${marks[1]}');
  print('But in the last courswork, my mark was ${marks.last}');
  int numberOfMarks = marks.length;
  int lastIndex = numberOfMarks - 1;
  marks[lastIndex] = 90;
  print('After the remark, my last mark is ${marks.last} 😂');
}

void stringSplitDemo() {
  String letters = 'abcdefg';
  List<String> splitted = letters.split('');
  print(splitted[2]);

  String joined = splitted.join(' ');
  print(joined);
}

void substringDemo() {
  String postcode = 'PO13HF';
  int startIndex = 3, endIndex = 5;
  print('The substring of "$postcode" from $startIndex to $endIndex is ' +
      postcode.substring(startIndex, endIndex));
  print('The substring of "$postcode" from $startIndex to the end is ' +
      postcode.substring(startIndex));
  print('The last 3 characters of "$postcode" are ' +
      postcode.substring(postcode.length - 3));
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

// List<bool> getAvailability() {
//   List<bool> availability = List.filled(7, true);
//   for (int i = 0; i < 7; i++) {
//     print('Do you have any classes on day ${i + 1}? (yes/no)');
//     String? response = stdin.readLineSync();
//     if (response == 'yes') {
//       availability[i] = false;
//     }
//   }
//   return availability;
// }

// The same function but with a for-in loop
List<bool> getAvailability() {
  List<bool> availability = List.filled(7, true);
  List<String> days = ['Mon', 'Tue', 'Wed', 'Thu', 'Fri'];
  for (String day in days) {
    print('Do you have any classes on $day? (yes/no)');
    String? response = stdin.readLineSync();
    if (response == 'yes') {
      int index = days.indexOf(day);
      availability[index] = false;
    }
  }
  return availability;
}

void addAndRemoveElements() {
  List<String> fruits = ['Apple', 'Banana', 'Cherry'];
  print('Initial list: $fruits');

  fruits.add('Pear');
  print('Added Pear: $fruits');

  fruits.insert(1, 'Blueberry');
  print('Inserted Blueberry at index 1: $fruits');

  fruits.remove('Banana');
  print('Removed Banana: $fruits');
}
