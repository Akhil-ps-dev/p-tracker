//@dart=2.9
import 'package:flutter/material.dart';
import 'package:flutter_period/main_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static final ValueNotifier<ThemeMode> themeNotifier =
      ValueNotifier(ThemeMode.light);
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<ThemeMode>(
        valueListenable: themeNotifier,
        builder: (_, ThemeMode currentMode, __) {
          return MaterialApp(
            // Remove the debug banner
            debugShowCheckedModeBanner: false,
            title: 'period tracker',
            theme: ThemeData(primarySwatch: Colors.pink),
            darkTheme: ThemeData.dark(),
            themeMode: currentMode,
            home: MainScreen(),
          );
        });
  }
}
