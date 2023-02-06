import 'package:flutter/widgets.dart';

@immutable
class ThemeExtensionColorPalette {
  const ThemeExtensionColorPalette({
    required this.primary1,
    required this.primary2,
    required this.primary3,
    required this.primary4,
    required this.secondary1,
    required this.secondary2,
    required this.secondary3,
    required this.secondary4,
    required this.onPrimary1,
    required this.onPrimary2,
    required this.onPrimary3,
    required this.onPrimary4,
    required this.onSecondary1,
    required this.onSecondary2,
    required this.onSecondary3,
    required this.onSecondary4,
    required this.onDisabledPrimary1,
    required this.onDisabledSecondary1,

    /// In this case, greyscale colors are not passed in. ymmv
    this.black = const Color(0xFF000000),
    this.gray1 = const Color(0xFF333333),
    this.gray2 = const Color(0xFF4F4F4F),
    this.gray3 = const Color(0xFF828282),
    this.gray4 = const Color(0xFFBDBDBD),
    this.gray5 = const Color(0xFFE0E0E0),
    this.gray6 = const Color(0xFFF2F2F2),
    this.white = const Color(0xFFFFFFFF),
  });

  /// Primary and secondary colors.
  final Color primary1;
  final Color primary2;
  final Color primary3;
  final Color primary4;
  final Color secondary1;
  final Color secondary2;
  final Color secondary3;
  final Color secondary4;

  /// Colors used for text/icons/etc. when displayed on a specific color.
  final Color onPrimary1;
  final Color onPrimary2;
  final Color onPrimary3;
  final Color onPrimary4;
  final Color onSecondary1;
  final Color onSecondary2;
  final Color onSecondary3;
  final Color onSecondary4;

  /// Disabled button colors.
  final Color onDisabledPrimary1;
  final Color onDisabledSecondary1;

  /// Greyscale.
  final Color black;
  final Color gray1;
  final Color gray2;
  final Color gray3;
  final Color gray4;
  final Color gray5;
  final Color gray6;
  final Color white;

  /// Linearly interpolate between two colors.
  ///
  /// This is intended to be fast but as a result may be ugly. Consider
  /// [HSVColor] or writing custom logic for interpolating colors.
  ///
  /// For more info on lerping colors, see line 242 of painting.dart in the
  /// SDK at flutter\bin\cache\pkg\sky_engine\lib\ui\painting.dart
  ThemeExtensionColorPalette lerp(ThemeExtensionColorPalette other, double t) {
    return ThemeExtensionColorPalette(
      primary1: Color.lerp(primary1, other.primary1, t)!,
      primary2: Color.lerp(primary2, other.primary2, t)!,
      primary3: Color.lerp(primary3, other.primary3, t)!,
      primary4: Color.lerp(primary4, other.primary4, t)!,
      secondary1: Color.lerp(secondary1, other.secondary1, t)!,
      secondary2: Color.lerp(secondary2, other.secondary2, t)!,
      secondary3: Color.lerp(secondary3, other.secondary3, t)!,
      secondary4: Color.lerp(secondary4, other.secondary4, t)!,
      onPrimary1: Color.lerp(onPrimary1, other.onPrimary1, t)!,
      onPrimary2: Color.lerp(onPrimary2, other.onPrimary2, t)!,
      onPrimary3: Color.lerp(onPrimary3, other.onPrimary3, t)!,
      onPrimary4: Color.lerp(onPrimary4, other.onPrimary4, t)!,
      onSecondary1: Color.lerp(onSecondary1, other.onSecondary1, t)!,
      onSecondary2: Color.lerp(onSecondary2, other.onSecondary2, t)!,
      onSecondary3: Color.lerp(onSecondary3, other.onSecondary3, t)!,
      onSecondary4: Color.lerp(onSecondary4, other.onSecondary4, t)!,
      onDisabledPrimary1: Color.lerp(onDisabledPrimary1, other.onDisabledPrimary1, t)!,
      onDisabledSecondary1: Color.lerp(onDisabledSecondary1, other.onDisabledSecondary1, t)!,
      black: Color.lerp(black, other.black, t)!,
      gray1: Color.lerp(gray1, other.gray1, t)!,
      gray2: Color.lerp(gray2, other.gray2, t)!,
      gray3: Color.lerp(gray3, other.gray3, t)!,
      gray4: Color.lerp(gray4, other.gray4, t)!,
      gray5: Color.lerp(gray5, other.gray5, t)!,
      gray6: Color.lerp(gray6, other.gray6, t)!,
      white: Color.lerp(white, other.white, t)!,
    );
  }

  /// Makes a copy of the current ThemeExtensionColorPalette with
  /// the parameters that aren't null changed to the values passed in
  /// for those parameters.
  ThemeExtensionColorPalette copyWith({
    Color? primary1,
    Color? primary2,
    Color? primary3,
    Color? primary4,
    Color? secondary1,
    Color? secondary2,
    Color? secondary3,
    Color? secondary4,
    Color? onPrimary1,
    Color? onPrimary2,
    Color? onPrimary3,
    Color? onPrimary4,
    Color? onSecondary1,
    Color? onSecondary2,
    Color? onSecondary3,
    Color? onSecondary4,
    Color? onDisabledPrimary1,
    Color? onDisabledSecondary1,
    Color? black,
    Color? gray1,
    Color? gray2,
    Color? gray3,
    Color? gray4,
    Color? gray5,
    Color? gray6,
    Color? white,
  }) {
    return ThemeExtensionColorPalette(
      primary1: primary1 ?? this.primary1,
      primary2: primary2 ?? this.primary2,
      primary3: primary3 ?? this.primary3,
      primary4: primary4 ?? this.primary4,
      secondary1: secondary1 ?? this.secondary1,
      secondary2: secondary2 ?? this.secondary2,
      secondary3: secondary3 ?? this.secondary3,
      secondary4: secondary4 ?? this.secondary4,
      onPrimary1: onPrimary1 ?? this.onPrimary1,
      onPrimary2: onPrimary2 ?? this.onPrimary2,
      onPrimary3: onPrimary3 ?? this.onPrimary3,
      onPrimary4: onPrimary4 ?? this.onPrimary4,
      onSecondary1: onSecondary1 ?? this.onSecondary1,
      onSecondary2: onSecondary2 ?? this.onSecondary2,
      onSecondary3: onSecondary3 ?? this.onSecondary3,
      onSecondary4: onSecondary4 ?? this.onSecondary4,
      onDisabledPrimary1: onDisabledPrimary1 ?? this.onDisabledPrimary1,
      onDisabledSecondary1: onDisabledSecondary1 ?? this.onDisabledSecondary1,
      black: black ?? this.black,
      gray1: gray1 ?? this.gray1,
      gray2: gray2 ?? this.gray2,
      gray3: gray3 ?? this.gray3,
      gray4: gray4 ?? this.gray4,
      gray5: gray5 ?? this.gray5,
      gray6: gray6 ?? this.gray6,
      white: white ?? this.white,
    );
  }
}
