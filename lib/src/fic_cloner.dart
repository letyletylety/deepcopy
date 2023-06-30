import 'package:fast_immutable_collections/fast_immutable_collections.dart';

import 'cloner_base.dart';

/// fast cloner using [FIC]
class FICCloner implements ClonerBase {
  @override
  List deepcopyList(List list) {
    IList iList = IList();

    for (final item in list) {
      if (item is Map) {
        iList = iList.add(deepcopyMap(item));
      } else if (item is List) {
        iList = iList.add(deepcopyList(item));
      } else if (item is Set) {
        iList = iList.add(deepcopySet(item));
      } else {
        iList = iList.add(item);
      }
    }
    return iList.toList();
  }

  @override
  Set deepcopySet(Set set) {
    IList iList = IList();

    for (final item in set) {
      if (item is Map) {
        iList = iList.add(deepcopyMap(item));
      } else if (item is List) {
        iList = iList.add(deepcopyList(item));
      } else if (item is Set) {
        iList = iList.add(deepcopySet(item));
      } else {
        iList = iList.add(item);
      }
    }
    return iList.toSet();
  }

  @override
  Map deepcopyMap(Map map) {
    IList<MapEntry> iMapList = IList<MapEntry>();

    for (final entry in map.entries) {
      final key = entry.key;
      final value = entry.value;

      if (value is Map) {
        iMapList = iMapList.add(MapEntry(key, deepcopyMap(value)));
      } else if (value is List) {
        iMapList = iMapList.add(MapEntry(key, deepcopyList(value)));
      } else if (value is Set) {
        iMapList = iMapList.add(MapEntry(key, deepcopySet(value)));
      } else {
        iMapList = iMapList.add(MapEntry(key, value));
      }
    }
    return Map.fromEntries(iMapList);
  }
}
