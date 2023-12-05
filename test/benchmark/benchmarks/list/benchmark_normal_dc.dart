import 'package:deepcopy/deepcopy.dart';

import '../benchmark_base.dart';

final class BenchmarkNormalListDeepcopy extends BenchmarkDeepcopyListBase {
  BenchmarkNormalListDeepcopy(int times) : super('normal list deepcopy', times);

  static void main(int times) {
    BenchmarkNormalListDeepcopy(times).report();
  }

  // The benchmark code.
  @override
  void run() {
    // ignore: unused_local_variable
    List copied = list.deepcopy();
    // copied.length;
    // print(copied);
    // print('list length : ${copied.length}');
  }
}
