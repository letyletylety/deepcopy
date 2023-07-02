import 'package:deepcopy/src/cloner.dart';
import 'fic_cloner.dart';
import 'json_cloner.dart';

extension ListCloner on List {
  List deepcopy() {
    return NormalCloner().deepcopyList(this);
  }

  List ficDeepcopy() {
    return FICCloner().deepcopyList(this);
  }

  List jsonDeepcopy() {
    return JsonCloner().deepcopyList(this);
  }
}

extension SetCloner on Set {
  Set deepcopy() {
    return NormalCloner().deepcopySet(this);
  }

  Set ficDeepcopy() {
    return FICCloner().deepcopySet(this);
  }

  Set jsonDeepcopy() {
    return JsonCloner().deepcopySet(this);
  }
}

extension MapClone on Map {
  Map deepcopy() {
    return NormalCloner().deepcopyMap(this);
  }

  Map ficDeepcopy() {
    return FICCloner().deepcopyMap(this);
  }

  Map jsonDeepcopy() {
    return JsonCloner().deepcopyMap(this);
  }
}
