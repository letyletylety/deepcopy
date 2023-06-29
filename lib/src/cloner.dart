abstract interface class ClonerBase {
  List cloneList(List list);
  Set cloneSet(Set set);
  Map cloneMap(Map map);
}

class NormalCloner implements ClonerBase {
  @override
  List cloneList(List list) {
    List copy = [];

    for (final item in list) {
      if (item is Map) {
        copy.add(cloneMap(item));
      } else if (item is List) {
        copy.add(cloneList(item));
      } else if (item is Set) {
        copy.add(cloneSet(item));
      } else {
        copy.add(item);
      }
    }
    return copy;
  }

  @override
  Map cloneMap(Map map) {
    Map copy = {};

    for (final entry in map.entries) {
      final key = entry.key;
      final value = entry.value;

      if (value is Map) {
        copy[key] = cloneMap(value);
      } else if (value is List) {
        copy[key] = cloneList(value);
      } else if (value is Set) {
        copy[key] = cloneSet(value);
      } else {
        copy[key] = value;
      }
    }
    return copy;
  }

  @override
  Set cloneSet(Set set) {
    Set copy = {};

    for (final item in set) {
      if (item is Map) {
        copy.add(cloneMap(item));
      } else if (item is List) {
        copy.add(cloneList(item));
      } else if (item is Set) {
        copy.add(cloneSet(item));
      } else {
        copy.add(item);
      }
    }
    return copy;
  }
}

class FastCloner implements ClonerBase {
  @override
  List cloneList(List list) {
    // TODO: implement cloneList
    throw UnimplementedError();
  }

  @override
  Map cloneMap(Map map) {
    // TODO: implement cloneMap
    throw UnimplementedError();
  }

  @override
  Set cloneSet(Set set) {
    // TODO: implement cloneSet
    throw UnimplementedError();
  }
}
