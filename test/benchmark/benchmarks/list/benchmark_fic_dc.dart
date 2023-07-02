import 'package:deepcopy/src/extension_for_test.dart';

import 'benchmark_base.dart';

final class BenchmarkFicListDeepcopy extends BenchmarkDeepcopyListBase {
  BenchmarkFicListDeepcopy(int times) : super('fic list deepcopy', times);
  static void main(int times) {
    BenchmarkFicListDeepcopy(times).report();
  }

  // The benchmark code.
  @override
  void run() {
    // ignore: unused_local_variable
    List copied = list.ficDeepcopy();
  }
}
