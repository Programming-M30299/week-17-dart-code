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

We've already seen collections in Python. Let's see how they are used in Dart.

### List

#### Defining a list

To store the names of our customers in a shop in a list, we can use the following code:

```dart
  List<String> customers = ['Ştefan', 'Amy', 'Jamila', 'Xiu', 'Amy'];
  print(customers); // [Ştefan, Amy, jamila, Xiu, Amy]
```

Pay attention to the type of the list: `List<String>`. This means that the list can only store strings.

You can use the `filled` constructor to create a list of a given length with all elements set to the same value:

```dart
  List<int> filledList = List.filled(5, 0);
  print(filledList); // [0, 0, 0, 0, 0]
  filledList[2] = 3;
```

#### Accessing elements

We can access and update the elements of the list using the square brackets (same as in Python):

```dart
  print(customers[2]); // Jamila
  customers[2] = 'Zeinab';
  print('3rd customer is now: ${customers[2]}'); // 3rd customer is now: Zeinab
  int numberOfCustomers = customers.length;
  print('Last customer is: ${customers[numberOfCustomers - 1]}'); // Last customer is: Amy
```

Lists have `first` and `last` properties that return the first and last elements of the list, respectively:

```dart
  print('First customer is: ${customers.first}'); // First customer is: Ştefan
  print('Last customer is: ${customers.last}'); // Last customer is: Amy
```

#### Adding and removing elements

There are two ways to add an element to a list: `add` and `insert`
To remove an element from a list, you can use the `remove` method:

```dart
  customers.add('José');
  print(customers); // [Ştefan, Amy, Zeinab, Xiu, Amy, José]

  customers.insert(2, 'Mohammed');
  print(customers); // [Ştefan, Amy, Mohammed, Zeinab, Xiu, Amy, José]

  customers.remove('Amy');
  print(customers); // [Ştefan, Mohammed, Zeinab, Xiu, Amy, José] (only the first occurrence is removed)
```

#### Iterating over a list

We've already seen examples of iterating over a list using a `for` loop.
In this example, we are adding 10 to each element of the list if it is less than 90, and setting it to 100 otherwise:

```dart
  List<int> marks = [77, 90, 64, 92, 0];
  for (int i = 0; i < marks.length; i++) {
    // We can't have more than 100%
    if (marks[i] >= 90) {
      marks[i] = 100;
    } else {
      marks[i] += 10;
    }
  }
  print('After +10: $marks'); // After +10: [77, 100, 64, 92, 10]
```

We can also iterate over a list using a `for-in` loop:

```dart
  List<int> marks = [77, 90, 64, 92, 0];
  int sum = 0;
  for (int mark in marks) {
    sum += mark;
  }
  print('Average mark is: ${sum / marks.length}'); // Average mark is: 64.6
```

#### Multidimensional lists (advanced)

Lists can contain other lists, which allows you to create multidimensional lists:

```dart
  List<List<int>> matrix = [
    [1, 2, 3],
    [4, 5, 6],
    [7, 8, 9]
  ];
  print(matrix[1][2]); // 6
```

Notice that we had to specify two indices to retrieve an element from the matrix.

Here is another example which shows how we can update a specific value in a two-dimensional list.

```dart
  List<List<String>> foodDiary = [
    ['🧇', '🧆', '🥗'],       // Monday
    ['🍳', '🍛'],             // Tuesday
    ['🥯', '🥘', '🥪'],       // Wednesday
    ['🍩', '🌯', '🍲'],       // Thursday
    ['🧇', '🌮', '🍣'],       // Friday
    ['🥞', '🥧', '🍔', '🍟'], // Saturday
    ['🍪', '🥪', '🍝']        // Sunday
  ];
  print('Before: ${foodDiary[5]}'); // Before: [🥞, 🥧, 🍔, 🍟]
  foodDiary[5][1]='🍕';
  print('After: ${foodDiary[5]}'); // After: [🥞, 🍕, 🍔, 🍟]
```

For more information on Lists, refer to the documentation page:
https://api.flutter.dev/flutter/dart-core/List-class.html

### Set

#### Defining a set and adding elements

A set is an unordered collection of unique elements.
We have already seen them in Python.
Here is how you can define a set in Dart:

```dart
  Set<String> modules = {'Programming', 'Networks', 'Core Computing'};
  print(modules); // {Programming, Networks, Core Computing}
  modules.add('Database');
  print(modules); // {Programming, Networks, Core Computing, Database}
  modules.add('Programming');
  print(modules); // {Programming, Networks, Core Computing, Database} (no duplicates)
```

#### Removing elements

You can remove an element from a set using the `remove` method:

```dart
  modules = {'Programming', 'Networks', 'Core Computing'};
  modules.remove('Networks');
  print(modules); // {Programming, Core Computing}
  modules.remove('Databases');
  print(modules); // {Programming, Core Computing} (no change)
```

#### Iterating over a set using a `for-in` loop

To iterate over a set, you can use a `for-in` loop (same as with lists):

```dart
  Set<String> modules = {'Programming', 'Networks', 'Core Computing'};
  for (String module in modules) {
    print(module);
  }
```
Note that you cannot access elements of a set by index, as sets are unordered.
Additionally, you cannot modify elements of a set when iterating over it.
To update an element, you need to remove it and add a new one.

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

Also: https://dart.dev/language/collections#control-flow-operators
