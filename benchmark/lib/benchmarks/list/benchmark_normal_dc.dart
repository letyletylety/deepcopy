import 'package:benchmark_harness/benchmark_harness.dart';
import 'package:deepcopy/deepcopy.dart';

import 'list_setup.dart';

class BenchmarkNormalListDeepcopy extends BenchmarkBase {
  BenchmarkNormalListDeepcopy() : super('normal list deepcopy');

  late List list;

  static void main() {
    BenchmarkNormalListDeepcopy().report();
  }

  // The benchmark code.
  @override
  void run() {
    List copied = list.deepcopy();
    // print(copied);
    // print('list length : ${copied.length}');
  }

  // Not measured setup code executed prior to the benchmark runs.
  @override
  void setup() {
    list = getDummyList();
  }

  // Not measured teardown code executed after the benchmark runs.
  @override
  void teardown() {}

  // To opt into the reporting the time per run() instead of per 10 run() calls.
  //@override
  //void exercise() => run();
}
