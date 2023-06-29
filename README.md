<!--
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages).

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages).
-->

# Clone

**recursive deep copying for nested collections**

This plugin helps with recursive deep copying for nested collections, such as [List], [Map], [Set], ensuring that the cloned object is independent and does not share references with the original object.

## Install

Add the following dependency to your `pubspec.yaml` file:

```yaml
dependencies:
    clone: ^1.0.0
```

## Features

- Deep copying of lists, maps, and sets with nested structures.
- Easy integration into existing Dart projects.

## Usage

```dart
// import this
import 'package:clone/clone.dart';

// clone it!
List clonedList = originalList.clone();
Map clonedMap = originalMap.clone();
Set clonedSet = originalSet.clone();
```

that's it! 

[example usage](example/bin/example.dart)

## Todos

- [ ] fast cloning for longer collection
- [ ] add benchmarks
