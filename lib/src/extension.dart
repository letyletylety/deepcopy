import 'package:clone/src/cloner.dart';

extension ListCloner on List {
  List clone() {
    return NormalCloner().cloneList(this);
  }
}

extension SetCloner on Set {
  Set clone() {
    return NormalCloner().cloneSet(this);
  }
}

extension MapClone on Map {
  Map clone() {
    return NormalCloner().cloneMap(this);
  }
}
