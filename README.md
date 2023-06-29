# deepcopy

<p align="center">
<img src="https://raw.githubusercontent.com/letyletylety/deepcopy/main/logos/deepcopy_logo%404x.png" height="256" alt="deepcopy" 
background-color='transparent'/>
</p>

<h2 align="center">recursive deep copy for nested collections
</h2>

This plugin helps with recursive [deep copy](https://developer.mozilla.org/en-US/docs/Glossary/Deep_copy) for nested collections, such as [List](https://api.flutter.dev/flutter/dart-core/List-class.html), [Map](https://api.flutter.dev/flutter/dart-core/Map-class.html), [Set](https://api.flutter.dev/flutter/dart-core/Set-class.html), ensuring that the cloned object is independent and does not share references with the original object, so that the cloned and existing object do not affect each other.

## Install

Add the following dependency to your `pubspec.yaml` file:

```yaml
dependencies:
    deepcopy: ^1.0.2
```

## Features

- Deep copying of lists, maps, and sets with nested structures.
- Easy to use by using extensions.

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

## Todos

- [ ] fast cloning for huge collection
- [ ] add benchmarks

## The story behind naming this plugin

At first I thought of names like "deepcopy" or "clone". I chose the shorter of the two, "clone". It didn't show up when I searched it in pub.dev. After implementing all the code, creating a logo, and writing the README,
I got an unauthorized error trying to deploy version 1.0.
It wasn't until I typed "https://pub.dev/packages/clone" into the address bar that I realized that the name had been taken six years earlier. I didn't realize that I might not be able to find the plugin on pub. I thought of "deepcopy" as the next best thing.
