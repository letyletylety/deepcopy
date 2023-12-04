/// cloner interface
abstract class ClonerBase {
  /// mutable list deepcopy
  List<T> deepcopyList<T>(List<T> list);

  /// mutable set deepcopy
  Set<T> deepcopySet<T>(Set<T> set);

  /// mutable map deepcopy
  Map<K, V> deepcopyMap<K, V>(Map<K, V> map);
}
