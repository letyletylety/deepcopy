import 'package:benchmark/benchmarks/list/benchmark_base.dart';
import 'package:deepcopy/deepcopy.dart';

class BenchmarkFicListDeepcopy extends BenchmarkDeepcopyListBase {
  BenchmarkFicListDeepcopy(int times) : super('fic list deepcopy', times);
  static void main(int times) {
    BenchmarkFicListDeepcopy(times).report();
  }

  // The benchmark code.
  @override
  void run() {
    List copied = list.ficDeepcopy();
  }
}
