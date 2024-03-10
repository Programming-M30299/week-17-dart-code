void main() {
  String fruits = '🍎,🍌:🍇,🍊;🍐';
  int index = fruits.indexOf('🍇');
  String untilGrape = fruits.substring(0, index);
  print(untilGrape); // 🍎,🍌:

  List<String> list = fruits.split(',');
  print(list); // ['🍎', '🍌:🍇', '🍊;🍐']
  list = fruits.split(RegExp(r'[:;,]+'));
  print(list); // ['🍎', '🍌', '🍇', '🍊', '🍐']

  List<String> colours = ['🔵', '⚪', '🔴'];
  String frenchFlag = colours.join('');
  print(frenchFlag); // 🔵⚪🔴
}
