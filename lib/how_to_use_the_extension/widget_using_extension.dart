import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:theme_extensions/app/custom_theme_instantiation.dart';
import 'package:theme_extensions/theme_extension/theme.dart';

/// A sample [Widget] that uses the theme extension.
@immutable
class WidgetUsingExtension extends StatefulWidget {
  /// Constructs a [WidgetUsingExtension]
  const WidgetUsingExtension({
    super.key,
  });

  @override
  State<WidgetUsingExtension> createState() => _WidgetUsingExtensionState();
}

class _WidgetUsingExtensionState extends State<WidgetUsingExtension> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // Fetch the theme extension from the context so we can use it throughout the widget.
    final customThemeExtension = Theme.of(context).extension<CustomThemeExtension>();
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32.0, vertical: 32.0),
        child: SizedBox.expand(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              _TextBlock(
                  text: customThemeExtension!.name,
                  textColor: customThemeExtension.colorPalette.onPrimary1,
                  backgroundColor: customThemeExtension.colorPalette.primary1),
              _TextBlock(
                  text: customThemeExtension.slogan,
                  textColor: customThemeExtension.colorPalette.onPrimary2,
                  backgroundColor: customThemeExtension.colorPalette.primary2),
              _TextBlock(
                  text: customThemeExtension.streetAddress,
                  textColor: customThemeExtension.colorPalette.onPrimary3,
                  backgroundColor: customThemeExtension.colorPalette.primary3),
              _TextBlock(
                  text: customThemeExtension.city,
                  textColor: customThemeExtension.colorPalette.onPrimary4,
                  backgroundColor: customThemeExtension.colorPalette.primary4),
              _TextBlock(
                  text: customThemeExtension.state,
                  textColor: customThemeExtension.colorPalette.onSecondary2,
                  backgroundColor: customThemeExtension.colorPalette.secondary2),
              _TextBlock(
                  text: customThemeExtension.email,
                  textColor: customThemeExtension.colorPalette.onSecondary3,
                  backgroundColor: customThemeExtension.colorPalette.secondary3),
              _TextBlock(
                  text: customThemeExtension.phone,
                  textColor: customThemeExtension.colorPalette.onSecondary4,
                  backgroundColor: customThemeExtension.colorPalette.secondary4),
            ],
          ),
        ),
      ),
    );
  }
}

/// Displays a block of text.
class _TextBlock extends StatelessWidget {
  const _TextBlock({
    required this.text,
    required this.textColor,
    required this.backgroundColor,
  });

  final String text;
  final Color textColor;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: backgroundColor,
      child: Padding(
        padding: const EdgeInsets.only(
          left: 16.0,
          top: 16.0,
          bottom: 8.0,
        ),
        child: Text(
          text,
          style: Theme.of(context).textTheme.headlineSmall!.copyWith(color: textColor),
        ),
      ),
    );
  }
}
