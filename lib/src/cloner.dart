import 'package:deepcopy/src/subtype.dart';

import 'cloner_base.dart';

/// deepcopy with mutable list
class NormalCloner implements ClonerBase {
  /// mutable list deepcopy
  @override
  List<T> deepcopyList<T>(List<T> list) {
    List<T> copy = [];

    for (final item in list) {
      if (item is Map && isSubtype<Map, T>()) {
        copy.add(deepcopyMap(item) as T);
      } else if (item is List && isSubtype<List, T>()) {
        copy.add(deepcopyList(item) as T);
      } else if (item is Set && isSubtype<Set, T>()) {
        copy.add(deepcopySet(item) as T);
      } else {
        copy.add(item);
      }
    }
    return copy;
  }

  /// mutable map deepcopy
  @override
  Map<K, V> deepcopyMap<K, V>(Map<K, V> map) {
    Map<K, V> copy = {};

    for (final entry in map.entries) {
      final key = entry.key;
      final value = entry.value;

      if (value is Map && isSubtype<Map, V>()) {
        copy[key] = deepcopyMap(value) as V;
      } else if (value is List && isSubtype<List, V>()) {
        copy[key] = deepcopyList(value) as V;
      } else if (value is Set && isSubtype<Set, V>()) {
        copy[key] = deepcopySet(value) as V;
      } else {
        copy[key] = value;
      }
    }
    return copy;
  }

  /// mutable map deepcopy
  @override
  Set<T> deepcopySet<T>(Set<T> set) {
    Set<T> copy = {};

    for (final item in set) {
      if (item is Map && isSubtype<Map, T>()) {
        copy.add(deepcopyMap(item) as T);
      } else if (item is List && isSubtype<List, T>()) {
        copy.add(deepcopyList(item) as T);
      } else if (item is Set && isSubtype<Set, T>()) {
        copy.add(deepcopySet(item) as T);
      } else {
        copy.add(item);
      }
    }
    return copy;
  }
}
