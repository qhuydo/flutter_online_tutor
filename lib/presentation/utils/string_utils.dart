extension UnicodeParsing on String {
  static const String emptyString = '';

  /// Replace country code to flag emoji in flutter
  ///
  /// ```dart
  /// 'VN'.toCountryFlagFromCountryCode() == '🇻🇳'
  /// ```
  ///
  /// Return `''` (empty String) if this has the length less than or greater
  /// than 2
  String toCountryFlagFromCountryCode() {
    const countryCodeLength = 2;
    if (length < countryCodeLength || length > countryCodeLength) {
      return emptyString;
    }

    // The 127397 comes from the Regional Indicator Symbol 🇦's HTML code, 127462,
    // minus the rune value of A, 65. 127462 - 65 = 127397
    final flag = toUpperCase().replaceAllMapped(RegExp(r'[A-Z]'), (match) {
      // print((match.group(0)?.codeUnitAt(0) ?? 65) + 127397);
      return String.fromCharCode((match.group(0)?.codeUnitAt(0) ?? 0) + 127397);
    });
    // print(flag);
    return flag;
  }
}
