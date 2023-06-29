// ignore_for_file: avoid_print

import 'package:_clone/src/cloner.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('test normal cloner', () {
    NormalCloner cloner = NormalCloner();

    const testBaseName = 'test normal cloner';

    test('$testBaseName : clonedList', () {
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
      List clonedList = cloner.cloneList(originalList);

      print(
          originalList); // Output: [1, 2, [3, 4, [5, 6, [7, 8]]], {name: John, age: 30}]
      print(clonedList); // Output:

      clonedList[0] = 100;
      clonedList[2][2][2][0] = 700;
      print(
          originalList); // Output: [1, 2, [3, 4, [5, 6, [7, 8]]], {name: John, age: 30}]
      print(
          clonedList); // Output: [100, 2, [3, 4, [5, 6, [700, 8]]], {name: John, age: 30}]

      expect(originalList, [
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
      ]);
      expect(clonedList, [
        100,
        2,
        [
          3,
          4,
          [
            5,
            6,
            [700, 8]
          ]
        ],
        {'name': 'John', 'age': 30}
      ]);
    });

    test('$testBaseName : clonedMap', () {
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
      Map clonedMap = cloner.cloneMap(originalMap);

      print(
          originalMap); // Output: {person: {name: John, age: 30}, numbers: [1, 2, 3], nested: {a: {b: {c: {d: deep}}}}}
      print(
          clonedMap); // Output: {person: {name: John, age: 30}, numbers: [1, 2, 3], nested: {a: {b: {c: {d: deep}}}}}

      clonedMap['person']['name'] = 'Jane';
      clonedMap['nested']['a']['b']['c']['d'] = 'modified';
      print(
          originalMap); // Output: {person: {name: Jane, age: 30}, numbers: [1, 2, 3], nested: {a: {b: {c: {d: modified}}}}}

      print(
          clonedMap); // Output: {person: {name: John, age: 30}, numbers: [1, 2, 3], nested: {a: {b: {c: {d: deep}}}}}
      expect({
        'person': {'name': 'John', 'age': 30},
        'numbers': [1, 2, 3],
        'nested': {
          'a': {
            'b': {
              'c': {'d': 'deep'}
            }
          }
        }
      }, originalMap); // Output:

      expect({
        'person': {'name': 'Jane', 'age': 30},
        'numbers': [1, 2, 3],
        'nested': {
          'a': {
            'b': {
              'c': {'d': 'modified'}
            }
          }
        }
      }, clonedMap); // Output:
    });

    test('$testBaseName : clonedSet', () {
      // Test set cloning
      Set originalSet = {
        'apple',
        'banana',
        {'carrot'},
        [
          'durian',
          [
            'elderberry',
            {
              'fig',
              [
                'grapefruit',
                {'honeydew'}
              ]
            }
          ]
        ],
        {'mango': 'sweet', 'orange': 'juicy'}
      };
      Set clonedSet = cloner.cloneSet(originalSet);

      print(
          originalSet); // Output: {apple, banana, {carrot}, [durian, [elderberry, {fig, [grapefruit, {honeydew}]}]], {mango: sweet, orange: juicy}}
      print(
          clonedSet); // Output: {apple, banana, {carrot}, [durian, [elderberry, {fig, [grapefruit, {honeydew}]}]], {mango: sweet, orange: juicy}}
      clonedSet.add('papaya');

      clonedSet.remove('banana');

      print(
          originalSet); // Output: {apple, banana, {carrot}, [durian, [elderberry, {fig, [grapefruit, {honeydew}]}]], {mango: sweet, orange: juicy}}
      print(
          clonedSet); // Output: {apple, {carrot: orange}, [durian, [elderberry, {fig, [grapefruit, {honeydew}]}]], {mango: sweet, orange: juicy}, papaya}
      clonedSet.clear();
      expect(clonedSet, <dynamic>{});
    });
  });
}
