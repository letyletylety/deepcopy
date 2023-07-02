import 'package:benchmark/benchmarks/list/benchmark_base.dart';
import 'package:deepcopy/deepcopy.dart';

class BenchmarkJsonListDeepcopy extends BenchmarkDeepcopyListBase {
  BenchmarkJsonListDeepcopy(int times) : super('json list deepcopy', times);

  static void main([int times = 100]) {
    BenchmarkJsonListDeepcopy(times).report();
  }

  // The benchmark code.
  @override
  void run() {
    List copied = list.jsonDeepcopy();
  }
}
