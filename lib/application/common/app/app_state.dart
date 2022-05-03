part of 'app_cubit.dart';

@freezed
class AppState with _$AppState {
  static const _surfaceMode = FlexSurfaceMode.highScaffoldLevelSurface;
  static const _blendLevel = 18;
  static const _defaultAppBarStyleLight = FlexAppBarStyle.surface;
  static const _defaultAppBarStyleDark = FlexAppBarStyle.background;
  static const _appBarOpacity = 0.95;
  static const _appBarElevation = 0.0;
  static const _transparentStatusBar = true;
  static const _tabBarStyle = FlexTabBarStyle.forAppBar;
  static const _tooltipsMatchBackground = true;
  static const _swapColours = false;
  static const _lightIsWhite = true;
  static const _darkIsTrueBlack = false;
  static final _visualDensity = FlexColorScheme.comfortablePlatformDensity;
  static final _fontFamily = GoogleFonts.sawarabiGothic().fontFamily;
  static const _subThemeData = FlexSubThemesData(
    useTextTheme: true,
    defaultRadius: 8,
    fabUseShape: true,
    interactionEffects: true,
    bottomNavigationBarElevation: 0,
    bottomNavigationBarOpacity: 0.95,
    navigationBarOpacity: 0.95,
    navigationBarMutedUnselectedLabel: true,
    navigationBarMutedUnselectedIcon: true,
    inputDecoratorIsFilled: true,
    inputDecoratorBorderType: FlexInputBorderType.outline,
    inputDecoratorUnfocusedHasBorder: true,
    blendOnColors: true,
    blendTextTheme: true,
    popupMenuOpacity: 0.95,
  );
  static const _useMaterial3 = true;

  const AppState._();

  const factory AppState({
    required Language language,
    required ColourScheme colourScheme,
    required AppThemeMode themeMode,
    Uri? initialUri,
    Uri? latestUri,
    @Default(true) hasInternetConnection,
    @Default(false) bool initialUriIsHandled,
  }) = _AppState;

  factory AppState.initial() => const AppState(
        language: Language.followSystem,
        colourScheme: ColourScheme.bahamaBlue,
        themeMode: AppThemeMode.followSystem,
  );

  ThemeData get light => FlexThemeData.light(
    scheme: colourScheme.toFlexScheme(),
    surfaceMode: _surfaceMode,
    blendLevel: _blendLevel,
    appBarStyle: _defaultAppBarStyleLight,
    appBarOpacity: _appBarOpacity,
    appBarElevation: _appBarElevation,
    transparentStatusBar: _transparentStatusBar,
    tabBarStyle: _tabBarStyle,
    tooltipsMatchBackground: _tooltipsMatchBackground,
    swapColors: _swapColours,
    lightIsWhite: _lightIsWhite,
    visualDensity: _visualDensity,
    fontFamily: _fontFamily,
    subThemesData: _subThemeData,
    useMaterial3: _useMaterial3,
  );

  ThemeData get dark => FlexThemeData.dark(
    scheme: colourScheme.toFlexScheme(),
    surfaceMode: _surfaceMode,
    blendLevel: _blendLevel,
    appBarStyle: _defaultAppBarStyleDark,
    appBarOpacity: 0.9,
    appBarElevation: _appBarElevation,
    transparentStatusBar: _transparentStatusBar,
    tabBarStyle: _tabBarStyle,
    tooltipsMatchBackground: _tooltipsMatchBackground,
    swapColors: _swapColours,
    darkIsTrueBlack: _darkIsTrueBlack,
    visualDensity: _visualDensity,
    fontFamily: _fontFamily,
    subThemesData: _subThemeData,
    useMaterial3: _useMaterial3,
  );

  ThemeData get lightWithSurfaceColouredAppBar => FlexThemeData.light(
    scheme: colourScheme.toFlexScheme(),
    surfaceMode: _surfaceMode,
    blendLevel: _blendLevel,
    appBarStyle: FlexAppBarStyle.surface,
    appBarOpacity: _appBarOpacity,
    appBarElevation: _appBarElevation,
    transparentStatusBar: _transparentStatusBar,
    tabBarStyle: _tabBarStyle,
    tooltipsMatchBackground: _tooltipsMatchBackground,
    swapColors: _swapColours,
    lightIsWhite: _lightIsWhite,
    visualDensity: _visualDensity,
    fontFamily: _fontFamily,
    subThemesData: _subThemeData,
    useMaterial3: _useMaterial3,
  );

  ThemeData get darkWithSurfaceColouredAppBar => dark;
}
