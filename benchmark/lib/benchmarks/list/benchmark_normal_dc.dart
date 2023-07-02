import 'package:benchmark/benchmarks/list/benchmark_base.dart';
import 'package:deepcopy/deepcopy.dart';

import 'list_setup.dart';

class BenchmarkNormalListDeepcopy extends BenchmarkDeepcopyListBase {
  BenchmarkNormalListDeepcopy(int times) : super('normal list deepcopy', times);

  static void main(int times) {
    BenchmarkNormalListDeepcopy(times).report();
  }

  // The benchmark code.
  @override
  void run() {
    List copied = list.deepcopy();
    // copied.length;
    // print(copied);
    // print('list length : ${copied.length}');
  }
}
