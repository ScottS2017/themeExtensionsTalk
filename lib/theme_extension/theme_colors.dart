import 'package:theme_extensions/theme_extension/theme.dart';

/// Used as a placeholder and is replaced with actual color from theme at runtime.
enum PrimaryThemeColor {
  /// Primary Color 1
  primary1,

  /// Primary Color 2
  primary2,

  /// Primary Color 3
  primary3,

  /// Primary Color 4
  primary4,
  ;

  /// Fetches color for placeholder
  Color colorFromTheme(CustomThemeExtension theme) {
    switch (this) {
      case PrimaryThemeColor.primary1:
        return theme.colorPalette.primary1;
      case PrimaryThemeColor.primary2:
        return theme.colorPalette.primary2;
      case PrimaryThemeColor.primary3:
        return theme.colorPalette.primary3;
      case PrimaryThemeColor.primary4:
        return theme.colorPalette.primary4;
    }
  }
}

/// Used as a placeholder and is replaced with actual color from theme at runtime.
enum SecondaryThemeColor {
  /// Primary Color 1
  secondary1,

  /// Primary Color 2
  secondary2,

  /// Primary Color 3
  secondary3,

  /// Primary Color 4
  secondary4,
  ;

  /// Fetches color for placeholder
  Color colorFromTheme(CustomThemeExtension theme) {
    switch (this) {
      case SecondaryThemeColor.secondary1:
        return theme.colorPalette.secondary1;
      case SecondaryThemeColor.secondary2:
        return theme.colorPalette.secondary2;
      case SecondaryThemeColor.secondary3:
        return theme.colorPalette.secondary3;
      case SecondaryThemeColor.secondary4:
        return theme.colorPalette.secondary4;
    }
  }
}

/// Used as a placeholder and is replaced with actual color from theme at runtime.
enum GrayscaleThemeColor {
  /// Primary Color black
  black,

  /// Primary Color gray1
  gray1,

  /// Primary Color gray2
  gray2,

  /// Primary Color gray3
  gray3,

  /// Primary Color gray4
  gray4,

  /// Primary Color gray5
  gray5,

  /// Primary Color gray6
  gray6,

  /// Primary Color white
  white,
  ;

  /// Fetches color for placeholder
  Color colorFromTheme(CustomThemeExtension theme) {
    switch (this) {
      case GrayscaleThemeColor.black:
        return theme.colorPalette.black;
      case GrayscaleThemeColor.gray1:
        return theme.colorPalette.gray1;
      case GrayscaleThemeColor.gray2:
        return theme.colorPalette.gray2;
      case GrayscaleThemeColor.gray3:
        return theme.colorPalette.gray3;
      case GrayscaleThemeColor.gray4:
        return theme.colorPalette.gray4;
      case GrayscaleThemeColor.gray5:
        return theme.colorPalette.gray5;
      case GrayscaleThemeColor.gray6:
        return theme.colorPalette.gray6;
      case GrayscaleThemeColor.white:
        return theme.colorPalette.white;
    }
  }
}
