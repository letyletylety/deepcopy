import 'dart:io';

import 'package:benchmark_harness/benchmark_harness.dart';

class FileEmitter implements ScoreEmitter {
  FileEmitter(this.file);

  final File file;

  @override
  Future<void> emit(String testName, double value) async {
    final IOSink out = file.openWrite(mode: FileMode.append);
    out.write('$testName(RunTime): $value us.');
    await out.flush();
    await out.close();
  }
}
