import 'package:benchmark/benchmarks/list/list_setup.dart';
import 'package:benchmark_harness/benchmark_harness.dart';

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
abstract class BenchmarkDeepcopyListBase extends BenchmarkBase {
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
    list = getDummyList(times);
  }
}
