// THIS IS NOT A TEST FILE

/// make dummymaker
abstract class DummyMaker {
  static List dummyList(int times) {
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

    List list = [];

    for (var i = 0; i < times; i++) {
      list.addAll(originalList);
    }
    // print('${originalList.length}');
    return list;
  }

  static Set dummySet(int times) {
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

    Set set = Set();

    for (var i = 0; i < times; i++) {
      set.addAll(originalSet);
    }
    // print('${originalList.length}');
    return set;
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


  // static List dummyList(int time) {
  //   List originalList = [
  //     1,
  //     2,
  //     [
  //       3,
  //       4,
  //       [
  //         5,
  //         6,
  //         [7, 8]
  //       ]
  //     ],
  //     {'name': 'John', 'age': 30}
  //   ];
  //   return originalList;
  // }