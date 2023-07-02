import 'dart:convert';

import '../candidate/json_cloner.dart';
import 'package:test/test.dart';

import '../dummy_maker.dart';

void main() {
  group('json basic test', () {
    test('basic json e/decode test', () {
      final dummyList = DummyMaker.dummyList(1);

      final encode = jsonEncode(dummyList);
      print(encode);
      final decodedList = jsonDecode(encode);
      expect(dummyList, decodedList);

      decodedList[0] = 100;
      decodedList[2][2][2][0] = 700;

      print(decodedList);
      print(dummyList);
    });

    // test('set json e/decode test', () {
    //   final dummySet = DummyMaker.dummySet(1);

    //   print(dummySet);

    //   final encode = jsonEncode(dummySet);
    //   print(encode);
    //   final decodedSet = jsonDecode(encode);
    //   expect(dummySet, decodedSet);
    // });
  });

  group('test json cloner', () {
    JsonCloner cloner = JsonCloner();
    const testBaseName = 'test json cloner';

    test('$testBaseName : clonedList', () {
      // Test list cloning
      List originalList = DummyMaker.dummyList(1);
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
      final originalMap = DummyMaker.dummyMap();
      Map clonedMap = cloner.deepcopyMap(originalMap);

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
      final originalSet = DummyMaker.dummySet(1);
      print(
          originalSet); // Output: {apple, banana, {carrot}, [durian, [elderberry, {fig, [grapefruit, {honeydew}]}]], {mango: sweet, orange: juicy}}
      Set clonedSet = cloner.deepcopySet(originalSet);

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
