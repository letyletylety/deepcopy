import 'package:clone/clone.dart';

void main(List<String> arguments) {
  // Test list cloning
  List originalList = [
    1,
    2,
    [
      3,
      4,
      [
        5,
        6,
        [7, 8]
      ]
    ],
    {'name': 'John', 'age': 30}
  ];
  // clone it!
  List clonedList = originalList.clone();

  // some changes
  clonedList[0] = 100;
  clonedList[2][2][2][0] = 700;

  print(
      originalList); // Output: [1, 2, [3, 4, [5, 6, [7, 8]]], {name: John, age: 30}]
  print(
      clonedList); // Output: [100, 2, [3, 4, [5, 6, [700, 8]]], {name: John, age: 30}]

  // Test map cloning
  Map originalMap = {
    'person': {'name': 'John', 'age': 30},
    'numbers': [1, 2, 3],
    'nested': {
      'a': {
        'b': {
          'c': {'d': 'deep'}
        }
      }
    }
  };

  // clone it!
  Map clonedMap = originalMap.clone();

  // some changes
  originalMap['person']['name'] = 'Jane';
  originalMap['nested']['a']['b']['c']['d'] = 'modified';
  print(
      originalMap); // Output: {person: {name: Jane, age: 30}, numbers: [1, 2, 3], nested: {a: {b: {c: {d: modified}}}}}
  print(
      clonedMap); // Output: {person: {name: John, age: 30}, numbers: [1, 2, 3], nested: {a: {b: {c: {d: deep}}}}}

  // Test set cloning
  Set originalSet = {
    'apple',
    'banana',
    {'carrot'},
    ['durian']
  };
  Set clonedSet = originalSet.clone();

  originalSet.clear();

  print(originalSet); // Output: {}
  print(clonedSet); // Output: {apple, banana, {carrot}, [durian]}
}
