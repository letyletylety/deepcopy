import 'package:benchmark_harness/benchmark_harness.dart';
import 'package:deepcopy/deepcopy.dart';
import 'package:deepcopy/src/cloner.dart';

import '../../../candidate/dynamic/dynamic_for_test.dart';
import '../../benchmark_lib.dart';

/// benchmark base class for deep copy in generic list
abstract base class BenchmarkDeepcopyGenericListBase<T> extends BenchmarkBase {
  BenchmarkDeepcopyGenericListBase(
    super.name,
    this.length, [
    emitter = const PrintEmitter(),
  ]) : super(emitter: emitter);

  final int length;

  late List<T> list;

  @override
  void report() {
    emitter.emit(name, measure());
  }

  @override
  void setup() {
    list = DummyMaker.getDummyIntList(length).cast<T>();
  }
}

/// benchmark class for deep copy in generic int list
final class BenchmarkNormalGenericListDeepcopy<T>
    extends BenchmarkDeepcopyGenericListBase<T> {
  BenchmarkNormalGenericListDeepcopy(int times)
      : super('normal generic list deepcopy', times);

  // The benchmark code.
  @override
  void run() {
    // ignore: unused_local_variable
    List<T> copied = NormalCloner().deepcopyList<T>(list);
    // copied.length;
    // print(copied);
    // print('list length : ${copied.length}');
  }
}

final class BenchmarkGenericListDeepcopyOld<T>
    extends BenchmarkDeepcopyGenericListBase<T> {
  BenchmarkGenericListDeepcopyOld(int times)
      : super('normal generic list deepcopy - old version(1.1.2)', times);

  // The benchmark code.
  @override
  void run() {
    // ignore: unused_local_variable
    List copied = OldNormalCloner().deepcopyList(list);
    // copied.length;
    // print(copied);
    // print('list length : ${copied.length}');
  }
}
