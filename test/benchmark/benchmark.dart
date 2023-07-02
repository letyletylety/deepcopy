import '../dummy_maker.dart';
import 'benchmark_lib.dart';

void main(List<String> arguments) {
  // final file = File('output/bench_test.txt');
  // await file.create(recursive: true);
  // final io = file.openWrite();
  // io.close();

  /// list benchmarks
  listBenchmark(10);
  listBenchmark(100);
  listBenchmark(1000);
}

void listBenchmark(int times) {
  final list = DummyMaker.dummyList(times);

  print('================================');
  print('list length : ${list.length}');
  BenchmarkNormalListDeepcopy.main(times);
  BenchmarkFicListDeepcopy.main(times);
  BenchmarkJsonListDeepcopy.main(times);
}

/// normal list deepcopy(RunTime): 731.51575 us.
/// fic list deepcopy(RunTime): 8122.93006993007 us.