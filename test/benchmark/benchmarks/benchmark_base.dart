import 'package:benchmark_harness/benchmark_harness.dart';

import '../benchmark_lib.dart';

/// benchmark base class for deep copy
abstract class BenchmarkDeepcopyBase extends BenchmarkBase {
  BenchmarkDeepcopyBase(
    super.name, [
    emitter = const PrintEmitter(),
  ]) : super(emitter: emitter);

  @override
  void report() {
    emitter.emit(name, measure());
  }
}

/// benchmark base class for deep copy
abstract base class BenchmarkDeepcopyListBase extends BenchmarkBase {
  BenchmarkDeepcopyListBase(
    super.name,
    this.times, [
    emitter = const PrintEmitter(),
  ]) : super(emitter: emitter);

  final int times;

  late List list;

  @override
  void report() {
    emitter.emit(name, measure());
  }

  @override
  void setup() {
    list = DummyMaker.dummyList(times);
  }
}
