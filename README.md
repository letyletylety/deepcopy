# Clone

<p align="center">
<img src="clone_logo@4x.png" height="256" alt="Bloc" 
background-color='transparent'/>
</p>

<h2 align="center">recursive deep copy for nested collections
</h2>

This plugin helps with recursive [deep copy](https://developer.mozilla.org/en-US/docs/Glossary/Deep_copy) for nested collections, such as [List](https://api.flutter.dev/flutter/dart-core/List-class.html), [Map](https://api.flutter.dev/flutter/dart-core/Map-class.html), [Set](https://api.flutter.dev/flutter/dart-core/Set-class.html), ensuring that the cloned object is independent and does not share references with the original object, so that the cloned and existing object do not affect each other.


## Install

Add the following dependency to your `pubspec.yaml` file:

```yaml
dependencies:
    clone: ^1.0.0
```

## Features

- Deep copying of lists, maps, and sets with nested structures.
- Easy to use by using extensions.

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

If you're interested in learning more, check out the
[example usage](example/bin/example.dart)

## Todos

- [ ] fast cloning for huge collection
- [ ] add benchmarks
