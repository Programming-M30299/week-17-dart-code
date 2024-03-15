void main() {
  // stringDemo(); // Uncomment to run

  // listDemo(); // Uncomment to run

  // iteratingLists(); // Uncomment to run

  // multiDimentionalLists(); // Uncomment to run
}

void multiDimentionalLists() {
  // A 3x3 matrix (2D list of lists)
  List<List<int>> matrix = [
    [1, 2, 3],
    [4, 5, 6],
    [7, 8, 9]
  ];
  print(matrix[1][2]); // 6

  // Another 2D list of lists
  List<List<String>> foodDiary = [
    ['🧇', '🧆', '🥗'], // Monday
    ['🍳', '🍛'], // Tuesday
    ['🥯', '🥘', '🥪'], // Wednesday
    ['🍩', '🌯', '🍲'], // Thursday
    ['🧇', '🌮', '🍣'], // Friday
    ['🥞', '🥧', '🍔', '🍟'], // Saturday
    ['🍪', '🥪', '🍝'] // Sunday
  ];
  print("Saturday's lunch: ${foodDiary[5][2]}"); // Saturday's lunch: 🍔
  print('Before: ${foodDiary[5]}'); // Before: [🥞, 🥧, 🍔, 🍟]
  foodDiary[5][1] = '🍕';
  print('After: ${foodDiary[5]}'); // After: [🥞, 🍕, 🍔, 🍟]
}

void iteratingLists() {
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

  int sum = 0;
  for (int mark in marks) {
    sum += mark;
  }
  print('Average mark is: ${sum / marks.length}'); // Average mark is: 64.6
}

void listDemo() {
  List<String> customers = [
    'Ştefan',
    'Amy',
    'Jamila',
    'Amy',
  ];
  print(customers); // [Ştefan, Amy, Jamila, Amy]
  print(customers[2]); // Jamila
  // print(customers[4]); // RangeError (index out of range)

  List<int> filledList = List.filled(5, 0);
  print(filledList); // [0, 0, 0, 0, 0]
  filledList[2] = 3;

  customers[2] = 'Zeinab';
  print('3rd customer is now: ${customers[2]}'); // 3rd customer is now: Zeinab
  int numOfCustomers = customers.length;
  String lastOne = customers[numOfCustomers - 1];
  print('Last customer is: $lastOne');
  // Last customer is: Amy

  print('First customer is: ${customers.first}');
  // First customer is: Ştefan
  print('Last customer is: ${customers.last}');
  // Last customer is: Amy

  customers.add('José');
  print(customers); // [Ştefan, Amy, Zeinab, Xiu, Amy, José]

  customers.insert(2, 'Mohammed');
  print(customers); // [Ştefan, Amy, Mohammed, Zeinab, Xiu, Amy, José]

  customers.remove('Amy');
  print(customers);
  // [Ştefan, Mohammed, Zeinab, Xiu, Amy, José] (only the first one is removed)
}

void stringDemo() {
  String fruits = '🍎,🍌:🍇,🍊;🍐';
  int index = fruits.indexOf('🍇');
  String untilGrape = fruits.substring(0, index);
  print(untilGrape); // 🍎,🍌:

  List<String> split = 'Hi, Hi; Hi'.split(', ');
  print(split); // ['Hi', 'Hi; Hi']
  split = 'Hi, Hi; Hi'.split(RegExp(r'[,;]+'));
  print(split); // ['Hi', 'Hi', ' Hi']

  List<String> colours = ['blue', 'white', 'red'];
  String flag = colours.join(' ');
  print(flag); // blue white red
}
