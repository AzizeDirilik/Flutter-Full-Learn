import 'package:flutter/material.dart';
import 'package:flutter_101/202/package_learn_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
            floatingActionButtonTheme: FloatingActionButtonThemeData(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadiusDirectional.circular(50))),
            progressIndicatorTheme: const ProgressIndicatorThemeData(
              circularTrackColor: Colors.lightBlue,
              color: Colors.white,
            ),
            cardTheme: CardTheme(
                color: const Color.fromARGB(255, 55, 54, 54),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20))),
            appBarTheme: const AppBarTheme(
              backgroundColor: Colors.transparent,
              centerTitle: true,
              elevation: 0,
            )),
        home: const PackageLearnView());
  }
}
