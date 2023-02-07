import 'package:flutter/material.dart';
import 'package:theme_extensions/app/custom_theme_instantiation.dart';
import 'package:theme_extensions/how_to_use_the_extension/widget_using_extension.dart';

/// An example using three [MaterialApp] widgets to show three different uses of theme extensions.
class App extends StatelessWidget {
  /// Creates an instance of [App].
  const App({
    super.key,
  });

  // Each of these three creates a separate [MaterialApp], sets its theme to one
  // of the theme extensions and then calls the same [WidgetUsingExtension] object.
  //
  // Since the theme extensions contain both color and strings, the code can be exactly
  // the same and still change the appearance and information of everything displayed.
  //
  // The main use case for this is a white-label app that can be customized for any
  // number of end-user clients. Perfect for companies that might want internal chat
  // apps, company news apps, or anything else where a standard cookie-cutter solution
  // can work as long as the colors, logos and strings can be changed to customize it
  // for any particular brand. Such situations don't required a custom app written from
  // scratch with an exclusive license, a white label app made to look like it was made
  // for the client will fit their needs perfectly, at a much lower cost. This way, the
  // owner of the app can keep reselling it to a limitless number of clients, customizing
  // it for each one.
  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      child: ColoredBox(
        color: Colors.grey[200]!,
        child: Row(
          textDirection: TextDirection.ltr,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: MaterialApp(
                debugShowCheckedModeBanner: false,
                title: 'Flutter Web Crafters',
                theme: ThemeData(
                  extensions: [
                    flutterWebCraftersThemeExtension,
                  ],
                ),
                home: const WidgetUsingExtension(),
              ),
            ),
            Expanded(
              child: MaterialApp(
                debugShowCheckedModeBanner: false,
                title: 'Backend Dartists',
                theme: ThemeData(
                  extensions: [
                    dartistsThemeExtension,
                  ],
                ),
                home: const WidgetUsingExtension(),
              ),
            ),
            Expanded(
              child:
              MaterialApp(
                debugShowCheckedModeBanner: false,
                title: 'Flutter Coders',
                theme: ThemeData(
                  extensions: [
                    flutterCodersThemeExtension,
                  ],
                ),
                home: const WidgetUsingExtension(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}