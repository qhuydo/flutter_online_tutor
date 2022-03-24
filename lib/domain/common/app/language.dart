enum Language {
  followSystem,
  en,
  ja,
  vi,
}

/// Get Language enum from [value].
/// Returns enum value corresponding with [value].
/// or returns enum.en otherwise.
Language getLanguageFromString(String? value) {
  switch (value) {
    case 'followSystem':
      return Language.followSystem;
    case 'ja':
      return Language.ja;
    case 'vi':
      return Language.vi;
    default:
      return Language.en;
  }
}