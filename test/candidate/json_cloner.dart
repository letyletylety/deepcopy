import 'dart:convert';

import 'package:deepcopy/src/cloner_base.dart';

class JsonCloner extends ClonerBase {
  @override
  List deepcopyList(List list) {
    final encodedList = jsonEncode(list);

    return List.from(jsonDecode(encodedList));
  }

  @override
  Map deepcopyMap(Map map) {
    final encodedMap = jsonEncode(map);

    return Map.from(jsonDecode(encodedMap));
  }

  @override
  Set deepcopySet(Set set) {
    /// how to set encode?
    final l = set
        .map(
          (e) => e,
        )
        .toList(growable: false);
    return Set.of(l);
    // final encodedMap = jsonEncode(set);

    // return Set.from(jsonDecode(encodedMap));
  }
}
