import 'package:deepcopy/src/subtype.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';

import '../../lib/src/cloner_base.dart';

/// fast cloner using [FIC]
class FICCloner implements ClonerBase {
  /// https://pub.dev/packages/fast_immutable_collections#10-flushing
  @override
  List<T> deepcopyList<T>(List<T> list) {
    // IList iList = IList.withConfig(IList(), ConfigList());
    IList iList = IList<T>();

    for (final item in list) {
      if (item is Map) {
        iList = iList.add(deepcopyMap(item)).flush;
      } else if (item is List) {
        iList = iList.add(deepcopyList(item)).flush;
      } else if (item is Set) {
        iList = iList.add(deepcopySet(item)).flush;
      } else {
        iList = iList.add(item);
      }
    }
    return iList.toList() as List<T>;
  }

  @override
  Set<T> deepcopySet<T>(Set<T> set) {
    IList iList = IList<T>();

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
    return iList.toSet() as Set<T>;
  }

  @override
  Map<K, V> deepcopyMap<K, V>(Map<K, V> map) {
    IList<MapEntry<K, V>> iMapList = IList<MapEntry<K, V>>();

    for (final entry in map.entries) {
      final key = entry.key;
      final value = entry.value;

      if (value is Map && isSubtype<Map, V>()) {
        iMapList = iMapList.add(MapEntry(key, deepcopyMap(value) as V));
      } else if (value is List && isSubtype<List, V>()) {
        iMapList = iMapList.add(MapEntry(key, deepcopyList(value) as V));
      } else if (value is Set && isSubtype<Set, V>()) {
        iMapList = iMapList.add(MapEntry(key, deepcopySet(value) as V));
      } else {
        iMapList = iMapList.add(MapEntry(key, value));
      }
    }
    return Map.fromEntries(iMapList);
  }
}
