# Week 17 Dart – Strings; Collections

## More on Strings

### String indexing and `length` property

Strings may be treated as a sequence of characters (as we did in Python).
Hence, strings have a `length` property and you can iterate through them character by character.

Try running the following code to see what it does (we will cover loops later):
```dart
  String email = 'UP000001@myport.ac.uk';
  for (int i = 0; i < email.length; i++) {
    print(email[i]);
  }
```

You need to be careful while indexing into strings in Dart.
Your interpretation of what a character is may be different to how the computer stores this data.
For example, both of the following printouts return 6 as opposed to the values you may be expecting by looking at the strings:
```dart
  String name = 'Hergé';
  print('Length of $name is: ${name.length}'); // should be 5?
 
  String animals = '🐱🐶🐸🐰🐹';
  print("Rabbit is the ${animals.indexOf('🐰')}'th animal"); // should be 4?
```

### Substrings with `substring` and `split`

You can get a substring of a larger string by specifying its start (and optionally its end):
```dart
  String email = 'UP000001@myport.ac.uk';
  String upNumber = email.substring(2,8);
  print('My UP number is: ' + upNumber); // My UP number is: 000001
 
  String postcode = 'PO13HF';
  print('The last three characters of postcode is ${postcode.substring(4)}');
  // The last two characters of postcode is 3HF
```

### Other string methods

#### `toLowerCase` and `toUpperCase`

Here are some useful operations from the documentation page of the String class that you may find useful:
```dart
  String name = ('Stella! Hey Stella!');
  print(name.toUpperCase()); // STELLA! HEY STELLA!
 

  print(name.toLowerCase()); // stella! hey stella!
```

#### `split` and `join`

The `split` method breaks down a string into a list of strings using a pattern (a substring of the bigger string).
The `join` method does the opposite: it concatenates a list of strings into a single string using a separator.
This separator and pattern can be an empty strings:
```dart
  String littleWomen = 'Jo and Beth and Amy and Meg';
  for (String name in littleWomen.split(' and ')) {
    print(name);
  }
  // Jo
  // Beth
  // Amy
  // Meg

  String letters = 'abcdefg';
  List<String> splitted = letters.split('');
  print(splitted[2]); // 'c', same as letters[2]

  String joined = splitted.join(' ');
  print(joined); // a b c d e f g
```

#### `startsWith` and `endsWith`

These methods check if a string starts or ends with a given substring:
```dart
  String email = 'up832240@myport.ac.uk';
  print(email.startsWith('up')); // true
  print(email.endsWith('uk')); // true
```

#### `contains` and `indexOf`

To check if a string contains a substring, you can use the `contains` method.
To find the index of the first occurrence of a substring, you can use the `indexOf` method:
```dart
    String quote = "You had me at hello.";

    bool containsHello = quote.contains("hello");
    print('Contains "hello": $containsHello');  // Outputs: Contains "hello": true

    int indexOfHello = quote.indexOf("hello");
    print('Index of "hello": $indexOfHello');  // Outputs: Index of "hello": 14
```

## Collections

### List

#### Defining a list

#### Accessing elements

#### Adding and removing elements

#### Iterating over a list using a `for` loop

#### Iterating over a list using a `for-in` loop

#### Multidimensional lists

### Set

#### Defining a set

#### Adding and removing elements

#### Iterating over a set using a `for-in` loop

### Map

#### Defining a map

#### Accessing elements

#### Adding and removing elements

#### Iterating over a map using a `for-in` loop

#### Collections as values in a map

## Higher order functions and collections

### Transforming with `map`

### Filtering with `where`

### Combining with `fold` and `reduce`

### Checking with `every` and `any`

### Sorting with `sort`

### Using `forEach` and `for-in` loops