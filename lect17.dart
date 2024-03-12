void main() {
  String fruits = '🍎,🍌:🍇,🍊;🍐';
  int index = fruits.indexOf('🍇');
  String untilGrape = fruits.substring(0, index);
  print(untilGrape); // 🍎,🍌:

  List<String> split = 'Hi, Hi; Hi'.split(', ');
  print(split); // ['Hi', 'Hi; Hi']
  split = 'Hi, Hi; Hi'.split(RegExp(r'[,;]+'));
  print(split); // ['Hi', 'Hi', ' Hi']

  List<String> colours = ['🔵', '⚪', '🔴'];
  String frenchFlag = colours.join('');
  print(frenchFlag); // 🔵⚪🔴
}
