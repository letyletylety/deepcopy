# deepcopy

<p align="center">
<img src="https://raw.githubusercontent.com/letyletylety/deepcopy/main/logos/deepcopy_logo%404x.png" height="256" alt="deepcopy"
background-color='transparent'/>
</p>

<h2 align="center">recursive deep copy for nested collections
</h2>

[![pub package](https://img.shields.io/pub/v/deepcopy.svg?label=deepcopy&color=blue)](https://pub.dev/packages/deepcopy)

This plugin helps with recursive [deep copy](https://developer.mozilla.org/en-US/docs/Glossary/Deep_copy) for nested collections, such as [List](https://api.flutter.dev/flutter/dart-core/List-class.html), [Map](https://api.flutter.dev/flutter/dart-core/Map-class.html), [Set](https://api.flutter.dev/flutter/dart-core/Set-class.html), ensuring that the cloned object is independent and does not share references with the original object, so that the cloned and existing object do not affect each other.

## Install

Add the following dependency to your `pubspec.yaml` file:

```yaml
dependencies:
    deepcopy: ^1.1.2
```

## Features

- Deep copying of lists, maps, and sets with nested structures.
- Easy to use by using extensions.
- Measuring the benchmarks (vs. JSON, vs. FIC)

## Usage

```dart
// import this
import 'package:deepcopy/deepcopy.dart';

// clone it!
List clonedList = originalList.deepcopy();
Map clonedMap = originalMap.deepcopy();
Set clonedSet = originalSet.deepcopy();
```

that's it!

If you're interested in learning more, check out the
[example usage](example/bin/example.dart)

## Internal Implementation

The internal implementation is simple. I used the intuitive method of adding items one by one to a new `MutableList`.

You can check it out here :
[implementation](lib/src/cloner.dart)

- ### vs Json Decode/Encode ?

    We may also implement deepcopy using `jsonEncode/jsonDecode`. However, there were performance benefits to just adding them to the `MutableList` one by one.

- ### why not use [fast_immutable_collections (FIC)](https://pub.dev/packages/fast_immutable_collections) ?

    When I first thought about creating this plugin, the first thing I thought of was FIC.
    But unlike `IList<int>`, the benchmarks for `IList<dynamic>` were actually even worse.

You can check the benchmark result out here :
[benchmark](test/benchmark/output/bench_test.txt)

You can also run your own benchmark code if you want.

```bash
cd test/benchmark
dart benchmark.dart
```

## Todos

- [x] add benchmarks for list
- [ ] add benchmarks for set
- [ ] add benchmarks for map

## The story behind naming this plugin

At first I thought of names like "deepcopy" or "clone". I chose the shorter of the two, "clone". It didn't show up when I searched it in pub.dev. After implementing all the code, creating a logo, and writing the README,
I got an unauthorized error trying to deploy version 1.0.
It wasn't until I typed "<https://pub.dev/packages/clone>" into the address bar that I realized that the name had been taken six years earlier. I didn't realize that I might not be able to find the plugin on pub. I thought of "deepcopy" as the next best thing.

## Contribute

If you have a better way, feel free to pull request it!
