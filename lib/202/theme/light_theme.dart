import 'package:flutter/material.dart';

class LightTheme {
  final _lightColor = _LightColor();
  late ThemeData theme;
  LightTheme() {
    theme = ThemeData(
        brightness: Brightness.dark,
        appBarTheme: const AppBarTheme(
            shape: RoundedRectangleBorder(
                borderRadius:
                    BorderRadius.vertical(bottom: Radius.circular(12)))),
        scaffoldBackgroundColor: Colors.white.withOpacity(0.2),
        floatingActionButtonTheme:
            FloatingActionButtonThemeData(backgroundColor: Colors.green[100]),
        buttonTheme: ButtonThemeData(
          colorScheme: ColorScheme.light(
              onPrimary: _lightColor._preciousStone,
              onSecondary: _lightColor._waterWash),
        ),
        checkboxTheme: CheckboxThemeData(
            fillColor: WidgetStatePropertyAll(_lightColor._waterWash)),
        textTheme: ThemeData.light().textTheme.copyWith(
            bodyMedium:
                TextStyle(fontSize: 16, color: _lightColor._textColor)));
  }
}

class _LightColor {
  final Color _textColor = Colors.purple;
  final Color _preciousStone = const Color(0xFF31869b);
  final Color _waterWash = const Color(0xFFadc3e6);
}
