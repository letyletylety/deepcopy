/// cloner interface
abstract class ClonerBase {
  /// mutable list deepcopy
  List deepcopyList(List list);

  /// mutable set deepcopy
  Set deepcopySet(Set set);

  /// mutable map deepcopy
  Map deepcopyMap(Map map);
}
