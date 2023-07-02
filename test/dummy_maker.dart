// THIS IS NOT A TEST FILE

/// make dummymaker
abstract class DummyMaker {
  static dummyList() {
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
    return originalList;
  }

  static Set dummySet() {
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
    return originalSet;
  }

  static Map dummyMap() {
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
    return originalMap;
  }
}
