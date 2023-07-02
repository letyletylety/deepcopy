import 'package:benchmark/benchmarks/list/benchmark_fic_dc.dart';
import 'package:benchmark/benchmarks/list/benchmark_json_dc.dart';
import 'package:benchmark/benchmarks/list/benchmark_normal_dc.dart';
import 'package:benchmark/benchmarks/list/list_setup.dart';

void main(List<String> arguments) {
  // final file = File('output/bench_test.txt');
  // await file.create(recursive: true);
  // final io = file.openWrite();
  // io.close();

  /// list benchmarks
  ///
  listBenchmark(10);
  listBenchmark(100);
  listBenchmark(1000);
}

void listBenchmark(int times) {
  final list = getDummyList(1);
  print('list length : ${list.length * times}');
  BenchmarkNormalListDeepcopy.main(times);
  BenchmarkFicListDeepcopy.main(times);
  BenchmarkJsonListDeepcopy.main(times);
}

/// normal list deepcopy(RunTime): 731.51575 us.
/// fic list deepcopy(RunTime): 8122.93006993007 us.
/// json list deepcopy(RunTime): 3405.7173333333335 us.
