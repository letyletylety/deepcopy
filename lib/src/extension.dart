import 'package:deepcopy/src/cloner.dart';

/// list extension for deepcopy
extension ListCloner on List {
  List deepcopy() {
    return NormalCloner().deepcopyList(this);
  }
}

/// set extension for deepcopy
extension SetCloner on Set {
  Set deepcopy() {
    return NormalCloner().deepcopySet(this);
  }
}

/// map extension for deepcopy
extension MapClone on Map {
  Map deepcopy() {
    return NormalCloner().deepcopyMap(this);
  }
}
