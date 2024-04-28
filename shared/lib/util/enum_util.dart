class EnumUtil {
  static String enumToString(o) => o.toString().split('.').last;

  static T enumFromString<T>(Iterable<T> values, String value) {
    return values.firstWhere((type) => type.toString().split('.').last == value);
  }
}
