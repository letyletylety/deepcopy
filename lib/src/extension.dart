import 'package:deepcopy/src/cloner.dart';
import 'package:deepcopy/src/fic_cloner.dart';

extension ListCloner on List {
  List deepcopy() {
    return NormalCloner().deepcopyList(this);
  }

  List fastDeepcopy() {
    return FICCloner().deepcopyList(this);
  }
}

extension SetCloner on Set {
  Set deepcopy() {
    return NormalCloner().deepcopySet(this);
  }

  Set fastDeepcopy() {
    return FICCloner().deepcopySet(this);
  }
}

extension MapClone on Map {
  Map deepcopy() {
    return NormalCloner().deepcopyMap(this);
  }

  Map fastDeepcopy() {
    return FICCloner().deepcopyMap(this);
  }
}
