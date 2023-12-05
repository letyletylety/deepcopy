// ignore_for_file: avoid_print

import 'package:deepcopy/src/cloner.dart';
import 'package:deepcopy/src/cloner_base.dart';
import 'package:test/test.dart';

void main() {
  group('test normal cloner', () {
    ClonerBase cloner = NormalCloner();

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
      List clonedList = cloner.deepcopyList(originalList);

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
        },
        'set': Set.of({1, 'Hi', 3}),
      };
      Map clonedMap = cloner.deepcopyMap(originalMap);

      print(
          originalMap); // Output: {'person': {'name': 'John', 'age': 30},'numbers': [1, 2, 3], 'nested': {'a': {'b': {'c': {'d': 'deep'}}}},'set': Set:[1, 'Hi', 3]}
      print(clonedMap); // <Same Output>

      /// changes in the original Map
      clonedMap['person']['name'] = 'Jane';
      clonedMap['nested']['a']['b']['c']['d'] = 'modified';
      clonedMap['set'].add('new element');
      clonedMap['set'].remove(clonedMap['set'].elementAt(2));

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
        },
        'set': {1, 'Hi', 3},
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
        },
        'set': {1, 'Hi', 'new element'},
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
      Set clonedSet = cloner.deepcopySet(originalSet);

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
