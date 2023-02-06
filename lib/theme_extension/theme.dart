import 'dart:ui';

import 'package:flutter/material.dart' show Theme, ThemeExtension, BuildContext, TextStyle;
import 'package:theme_extensions/theme_extension/color_palette.dart';
import 'package:theme_extensions/theme_extension/font_weights.dart';
import 'package:theme_extensions/theme_extension/text_styles.dart';

export 'package:flutter/rendering.dart';
export 'package:theme_extensions/theme_extension/color_palette.dart';
export 'package:theme_extensions/theme_extension/font_weights.dart';
export 'package:theme_extensions/theme_extension/theme_colors.dart';
export 'package:theme_extensions/theme_extension/text_styles.dart';
export 'package:theme_extensions/theme_extension/theme_text_style.dart';
export 'package:flutter/material.dart' show Icons, Theme, ThemeExtension, BuildContext, TextStyle;

/// A [ThemeExtension] class that will allow the use of custom parameters within a theme.
/// A different instance should be created for each client.
class CustomThemeExtension extends ThemeExtension<CustomThemeExtension> {

  /// Creates an instance of [CustomThemeExtension].
  const CustomThemeExtension({
    required this.name,
    required this.slogan,
    required this.streetAddress,
    required this.city,
    required this.state,
    required this.phone,
    required this.email,
    required this.colorPalette,
    required this.textStyles,
  });

  /// The name of the client company.
  final String name;

  /// The slogan of the client company.
  final String slogan;

  /// The street address of the client company.
  final String streetAddress;

  /// The city of the client company.
  final String city;

  /// The country code of the client company.
  final String state;

  /// The phone number of the client company.
  final String phone;

  /// The email of the client company.
  final String email;

  /// The [Color] palette used across the app.
  final ThemeExtensionColorPalette colorPalette;

  /// The [TextStyle]s used across the app.
  final ThemeExtensionTextStyles textStyles;

  /// As other "of" functions, it allows access to this [CustomThemeExtension]
  /// from higher in the tree.
  static CustomThemeExtension of(BuildContext context) {
    return Theme.of(context).extension<CustomThemeExtension>()!;
  }

  /// Lerp transitions old values to new.
  @override
  ThemeExtension<CustomThemeExtension> lerp(ThemeExtension<CustomThemeExtension>? other, double t) {
    final otherTheme = other as CustomThemeExtension;
    return CustomThemeExtension(
      name: name,
      colorPalette: colorPalette.lerp(otherTheme.colorPalette, t),
      textStyles: textStyles.lerp(otherTheme.textStyles, t),
        slogan: slogan,
        streetAddress: streetAddress,
        city: city,
        state: state,
        phone: phone,
        email: email,
    );
  }

  /// Creates a copy of the [CustomThemeExtension] using new values passed in
  /// and reusing current values for any parameters not specified.
  @override
  CustomThemeExtension copyWith({
    String? clientName,
    ThemeExtensionColorPalette? colorPalette,
    ThemeExtensionTextStyles? textStyles,
    String? clientSlogan,
    String? clientStreetAddress,
    String? clientCity,
    String? clientCountryCode,
    String? clientPhone,
    String? clientEmail,
  }) {
    return CustomThemeExtension(
      name: clientName ?? name,
      colorPalette: colorPalette ?? this.colorPalette,
      textStyles: textStyles ?? this.textStyles,
        slogan: clientSlogan ?? slogan,
        streetAddress: clientStreetAddress ?? streetAddress,
        city: clientCity ?? city,
        state: clientCountryCode ?? state,
        phone: clientPhone ?? phone,
        email: clientEmail ?? email,
    );
  }

  /// Default [ThemeExtensionTextStyles]
  static final defaultTextStyles = ThemeExtensionTextStyles(
    displayLarge: _makeTextStyle(32.0),
    displayMedium: _makeTextStyle(28.0),
    displaySmall: _makeTextStyle(24.0),
    labelLarge: _makeTextStyle(16.0),
    labelMedium: _makeTextStyle(14.0),
    labelSmall: _makeTextStyle(12.0),
    titleLarge: _makeTextStyle(22.0),
    titleMedium: _makeTextStyle(20.0),
    titleSmall: _makeTextStyle(18.0),
    headlineLarge: _makeTextStyle(16.0),
    headlineMedium: _makeTextStyle(14.0),
    headlineSmall: _makeTextStyle(12.0),
    bodyLarge: _makeTextStyle(16.0, FontWeights.normal),
    bodyMedium: _makeTextStyle(14.0, FontWeights.normal),
    bodySmall: _makeTextStyle(12.0, FontWeights.normal),
  );

  static TextStyle _makeTextStyle(double size, [FontWeight weight = FontWeights.semiBold]) {
    return TextStyle(
      fontWeight: weight,
      fontSize: size,
      letterSpacing: -0.2,
    );
  }
}
