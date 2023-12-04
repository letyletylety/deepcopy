import 'package:deepcopy/src/cloner.dart';

/// list extension for deepcopy
extension ListCloner<T> on List<T> {
  List<T> deepcopy() {
    return NormalCloner().deepcopyList(this);
  }
}

/// set extension for deepcopy
extension SetCloner<T> on Set<T> {
  Set<T> deepcopy() {
    return NormalCloner().deepcopySet(this);
  }
}

/// map extension for deepcopy
extension MapClone<K, V> on Map<K, V> {
  Map<K, V> deepcopy() {
    return NormalCloner().deepcopyMap(this);
  }
}
