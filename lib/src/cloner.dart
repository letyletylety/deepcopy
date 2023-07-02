import 'cloner_base.dart';

/// deepcopy with mutable list
class NormalCloner implements ClonerBase {
  @override
  List deepcopyList(List list) {
    List copy = [];

    for (final item in list) {
      if (item is Map) {
        copy.add(deepcopyMap(item));
      } else if (item is List) {
        copy.add(deepcopyList(item));
      } else if (item is Set) {
        copy.add(deepcopySet(item));
      } else {
        copy.add(item);
      }
    }
    return copy;
  }

  @override
  Map deepcopyMap(Map map) {
    Map copy = {};

    for (final entry in map.entries) {
      final key = entry.key;
      final value = entry.value;

      if (value is Map) {
        copy[key] = deepcopyMap(value);
      } else if (value is List) {
        copy[key] = deepcopyList(value);
      } else if (value is Set) {
        copy[key] = deepcopySet(value);
      } else {
        copy[key] = value;
      }
    }
    return copy;
  }

  @override
  Set deepcopySet(Set set) {
    Set copy = {};

    for (final item in set) {
      if (item is Map) {
        copy.add(deepcopyMap(item));
      } else if (item is List) {
        copy.add(deepcopyList(item));
      } else if (item is Set) {
        copy.add(deepcopySet(item));
      } else {
        copy.add(item);
      }
    }
    return copy;
  }
}
