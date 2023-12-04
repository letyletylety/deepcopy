import 'package:deepcopy/src/cloner.dart';
import 'fic_cloner.dart';
import 'json_cloner.dart';

extension ListCloner<T> on List<T> {
  List<T> deepcopy() {
    return NormalCloner().deepcopyList(this);
  }

  List<T> ficDeepcopy() {
    return FICCloner().deepcopyList(this);
  }

  List<T> jsonDeepcopy() {
    return JsonCloner().deepcopyList(this);
  }
}

extension SetCloner<T> on Set<T> {
  Set<T> deepcopy() {
    return NormalCloner().deepcopySet(this);
  }

  Set<T> ficDeepcopy() {
    return FICCloner().deepcopySet(this);
  }

  Set<T> jsonDeepcopy() {
    return JsonCloner().deepcopySet(this);
  }
}

extension MapClone<K, V> on Map<K, V> {
  Map<K, V> deepcopy() {
    return NormalCloner().deepcopyMap(this);
  }

  Map<K, V> ficDeepcopy() {
    return FICCloner().deepcopyMap(this);
  }

  Map<K, V> jsonDeepcopy() {
    return JsonCloner().deepcopyMap(this);
  }
}

main() {}
