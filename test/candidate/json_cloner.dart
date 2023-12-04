import 'dart:convert';

import 'package:deepcopy/src/cloner_base.dart';

class JsonCloner extends ClonerBase {
  @override
  List<T> deepcopyList<T>(List<T> list) {
    final encodedList = jsonEncode(list);

    return List<T>.from(jsonDecode(encodedList));
  }

  @override
  Map<K, V> deepcopyMap<K, V>(Map<K, V> map) {
    final encodedMap = jsonEncode(map);

    return Map<K, V>.from(jsonDecode(encodedMap));
  }

  @override
  Set<T> deepcopySet<T>(Set<T> set) {
    /// how to set encode?
    final l = set
        .map(
          (e) => e,
        )
        .toList(growable: false);
    return Set<T>.of(l);
    // final encodedMap = jsonEncode(set);

    // return Set.from(jsonDecode(encodedMap));
  }
}
