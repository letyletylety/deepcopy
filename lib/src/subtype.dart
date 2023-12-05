/// subtype checker
///
// from lrn's StackOverflow answer: https://stackoverflow.com/a/70670060/13447926
// CC BY-SA 4.0
bool isSubtype<S, T>() => <S>[] is List<T>;
