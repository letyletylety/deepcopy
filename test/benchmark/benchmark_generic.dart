import 'benchmark_lib.dart';

void main() {
  testGeneric(10);
  testGeneric(100);
  testGeneric(1000);
  testGeneric(10000);
}

void testGeneric(int length) {
  final list = DummyMaker.getDummyIntList(length);

  print('================================');
  print('list length : ${list.length}');

  BenchmarkNormalGenericListDeepcopy<int>(length).report();
  BenchmarkGenericListDeepcopyOld<int>(length).report();
}

// void listBenchmark(int times) {
//   final list = DummyMaker.dummyList(times);

//   print('================================');
//   print('list length : ${list.length}');
//   BenchmarkNormalListDeepcopy.main(times);
//   BenchmarkFicListDeepcopy.main(times);
//   BenchmarkJsonListDeepcopy.main(times);
// }
