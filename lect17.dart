// void main() {
//   String fruits = '🍎,🍌:🍇,🍊;🍐';
//   int index = fruits.indexOf('🍇');
//   String untilGrape = fruits.substring(0, index);
//   print(untilGrape); // 🍎,🍌:

//   List<String> list = fruits.split(',');
//   print(list); // ['🍎', '🍌:🍇', '🍊;🍐']
//   list = fruits.split(RegExp(r'[:;,]+'));
//   print(list); // ['🍎', '🍌', '🍇', '🍊', '🍐']

//   List<String> colours = ['🔵', '⚪', '🔴'];
//   String frenchFlag = colours.join('');
//   print(frenchFlag); // 🔵⚪🔴
// }

bool isValidEmail(String email) {
  if (!email.contains('@'))
    return false;
  else if (!email.endsWith('port.ac.uk'))
    return false;
  else
    return true;
}

void main() {
  print(isValidEmail('matthew.poole@port.ac.uk')); // true
  print(isValidEmail('up832240@myport.ac.uk')); // true
  // Now bad examples
  print(isValidEmail('john.doe@example.com')); // false
}
