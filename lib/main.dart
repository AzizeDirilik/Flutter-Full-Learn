import 'package:flutter/material.dart';
import 'package:flutter_101/demos/color_demos_view.dart';
import 'package:flutter_101/demos/color_life_cycle_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
          progressIndicatorTheme: const ProgressIndicatorThemeData(
            circularTrackColor: Colors.lightBlue,
            color: Colors.white,
          ),
          cardTheme: CardTheme(
              color: Colors.grey[800],
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10))),
          appBarTheme: const AppBarTheme(
            backgroundColor: Colors.transparent,
            centerTitle: true,
            elevation: 0,
          )),
      home: const ColorLifeCycleView()
    );
  }
}

