import 'package:flutter/material.dart';
import 'package:theme_extensions/theme_extension/custom_theme_extension.dart';

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
      backgroundColor: Colors.grey[200],
      body: Padding(
        padding: const EdgeInsets.all(32.0),
        child: SizedBox.expand(
          child: DecoratedBox(
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                color: Colors.black54,
                width: 2,
              ),
              borderRadius: BorderRadius.circular(20.0),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black45,
                  blurRadius: 4.0,
                  offset: Offset(2.0, 2.0),
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: DefaultTextStyle.merge(
                style: Theme.of(context).textTheme.headlineSmall,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    if (customThemeExtension!.logoImage != null)
                      Center(
                        child: SizedBox(
                          width: 100.0,
                          height: 100.0,
                          child: Image.asset(customThemeExtension.logoImage!),
                        ),
                      ),
                    const SizedBox(height: 16.0),
                    Text(customThemeExtension.name,
                        style: Theme.of(context).textTheme.headlineMedium),
                    const SizedBox(height: 16.0),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 12.0, left: 16.0, right: 16.0),
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          color: customThemeExtension.colorPalette.primary1,
                          border: Border.all(
                            color: Colors.black87,
                            width: 1.0,
                          ),
                          borderRadius: const BorderRadius.all(
                            Radius.circular(4.0),
                          ),
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.black54,
                              blurRadius: 3.0,
                              offset: Offset(1.0, 1.0),
                            ),
                          ],
                        ),
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: FittedBox(
                              child: Text(
                                customThemeExtension.slogan,
                                style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                                    color: customThemeExtension.colorPalette.onPrimary1, height: 1),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Text(customThemeExtension.streetAddress),
                    Text('${customThemeExtension.city}, ${customThemeExtension.state}.'),
                    const SizedBox(height: 8.0),
                    Text(customThemeExtension.email),
                    Text(customThemeExtension.phone),
                    const SizedBox(height: 64.0),
                    Center(
                      child: Wrap(
                        spacing: 30.0,
                        runSpacing: 30.0,
                        children: [
                          _ButtonBlock(
                              textColor: customThemeExtension.colorPalette.onPrimary1,
                              backgroundColor: customThemeExtension.colorPalette.primary1),
                          _ButtonBlock(
                              textColor: customThemeExtension.colorPalette.onPrimary2,
                              backgroundColor: customThemeExtension.colorPalette.primary2),
                          _ButtonBlock(
                              textColor: customThemeExtension.colorPalette.onPrimary3,
                              backgroundColor: customThemeExtension.colorPalette.primary3),
                          _ButtonBlock(
                              textColor: customThemeExtension.colorPalette.onPrimary4,
                              backgroundColor: customThemeExtension.colorPalette.primary4),
                          _ButtonBlock(
                              textColor: customThemeExtension.colorPalette.onSecondary1,
                              backgroundColor: customThemeExtension.colorPalette.secondary1),
                          _ButtonBlock(
                              textColor: customThemeExtension.colorPalette.onSecondary2,
                              backgroundColor: customThemeExtension.colorPalette.secondary2),
                          _ButtonBlock(
                              textColor: customThemeExtension.colorPalette.onSecondary3,
                              backgroundColor: customThemeExtension.colorPalette.secondary3),
                          _ButtonBlock(
                              textColor: customThemeExtension.colorPalette.onSecondary4,
                              backgroundColor: customThemeExtension.colorPalette.secondary4),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

/// Displays a block of text.
class _ButtonBlock extends StatelessWidget {
  const _ButtonBlock({
    required this.textColor,
    required this.backgroundColor,
  });

  final Color textColor;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: backgroundColor,
        border: Border.all(
          color: Colors.black87,
          width: 1.0,
        ),
        borderRadius: const BorderRadius.all(
          Radius.circular(4.0),
        ),
        boxShadow: const [
          BoxShadow(
            color: Colors.black54,
            blurRadius: 3.0,
            offset: Offset(1.0, 1.0),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          'Button',
          style: Theme.of(context)
              .textTheme
              .headlineSmall!
              .copyWith(color: textColor, height: 1),
        ),
      ),
    );
  }
}
