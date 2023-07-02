import 'package:fast_immutable_collections/fast_immutable_collections.dart';

List getDummyList(int times) {
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

  IList list = originalList.lock;

  for (var i = 0; i < times; i++) {
    list = list.addAll(originalList);
  }
  // print('${originalList.length}');
  return list.unlock;
}
