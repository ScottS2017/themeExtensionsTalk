import 'package:theme_extensions/theme_extension/theme.dart';

/// Used as a placeholder and can be replaced with customized TextStyles at runtime.
enum ThemeTextStyle {
  /// Display Large
  displayLarge,
  /// Display Medium
  displayMedium,
  /// Display Small
  displaySmall,
  /// Label Large
  labelLarge,
  /// Label Medium
  labelMedium,
  /// Label Small
  labelSmall,
  /// Title Large
  titleLarge,
  /// Title Medium
  titleMedium,
  /// Title Small
  titleSmall,
  /// Headline Large
  headlineLarge,
  /// Headline Medium
  headlineMedium,
  /// Headline Small
  headlineSmall,
  /// Body Large
  bodyLarge,
  /// Body Medium
  bodyMedium,
  /// Body Small
  bodySmall,
  ;
  /// Fetches color for placeholder
  TextStyle textStyleFromTheme(CustomThemeExtension theme) {
    switch(this) {
      case ThemeTextStyle.displayLarge:
        return theme.textStyles.displayLarge;
      case ThemeTextStyle.displayMedium:
        return theme.textStyles.displayMedium;
      case ThemeTextStyle.displaySmall:
        return theme.textStyles.displaySmall;
      case ThemeTextStyle.labelLarge:
        return theme.textStyles.labelLarge;
      case ThemeTextStyle.labelMedium:
        return theme.textStyles.labelMedium;
      case ThemeTextStyle.labelSmall:
        return theme.textStyles.labelSmall;
      case ThemeTextStyle.titleLarge:
        return theme.textStyles.titleLarge;
      case ThemeTextStyle.titleMedium:
        return theme.textStyles.titleMedium;
      case ThemeTextStyle.titleSmall:
        return theme.textStyles.titleSmall;
      case ThemeTextStyle.headlineLarge:
        return theme.textStyles.headlineLarge;
      case ThemeTextStyle.headlineMedium:
        return theme.textStyles.headlineMedium;
      case ThemeTextStyle.headlineSmall:
        return theme.textStyles.headlineSmall;
      case ThemeTextStyle.bodyLarge:
        return theme.textStyles.bodyLarge;
      case ThemeTextStyle.bodyMedium:
        return theme.textStyles.bodyMedium;
      case ThemeTextStyle.bodySmall:
        return theme.textStyles.bodySmall;
    }
  }
}
