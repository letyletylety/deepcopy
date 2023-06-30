import 'package:benchmark/benchmarks/list/benchmark_fic_dc.dart';
import 'package:benchmark/benchmarks/list/benchmark_normal_dc.dart';

void main(List<String> arguments) {
  BenchmarkNormalListDeepcopy.main();

  BenchmarkFicListDeepcopy.main();
}
