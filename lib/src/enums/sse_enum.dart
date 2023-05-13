part of src;

enum SseMethod {
  GET,
  POST,
  PATCH,
  PUT,
}

extension SseMethodEnumExtension on SseMethod {
  String get value => describeEnum(this).toUpperCase();
}

String describeEnum(Object enumEntry) {
  if (enumEntry is Enum) {
    return enumEntry.name;
  }
  final String description = enumEntry.toString();
  final int indexOfDot = description.indexOf('.');
  assert(
    indexOfDot != -1 && indexOfDot < description.length - 1,
    'The provided object "$enumEntry" is not an enum.',
  );
  return description.substring(indexOfDot + 1);
}
