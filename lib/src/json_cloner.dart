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
    final encodedMap = jsonEncode(set);

    return Set.from(jsonDecode(encodedMap));
  }
}
