enum Language {
  followSystem,
  en,
  ja,
  vi,
}

/// Get Language enum from [value].
/// Returns enum value corresponding with [value].
/// or returns enum.followSystem otherwise.
Language getLanguageFromString(String? value) {
  switch (value) {
    case 'Language.en':
      return Language.en;
    case 'Language.ja':
      return Language.ja;
    case 'Language.vi':
      return Language.vi;
    default:
      return Language.followSystem;
  }
}