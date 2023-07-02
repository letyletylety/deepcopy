import 'package:deepcopy/src/cloner.dart';

extension ListCloner on List {
  List deepcopy() {
    return NormalCloner().deepcopyList(this);
  }
}

extension SetCloner on Set {
  Set deepcopy() {
    return NormalCloner().deepcopySet(this);
  }
}

extension MapClone on Map {
  Map deepcopy() {
    return NormalCloner().deepcopyMap(this);
  }
}
