import 'package:flutter/material.dart';
import 'package:flutter_101/demos/my_collections_demos.dart';


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
              color: Color.fromARGB(255, 55, 54, 54),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20))),
          appBarTheme: const AppBarTheme(
            backgroundColor: Colors.transparent,
            centerTitle: true,
            elevation: 0,
          )),
      home: const MyCollectionDemos()
    );
  }
}

