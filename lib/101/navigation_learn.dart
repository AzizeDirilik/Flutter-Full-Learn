import 'package:flutter/material.dart';
import 'package:flutter_101/demos/my_collections_demos.dart';

class NavigationLearn extends StatefulWidget {
  const NavigationLearn({super.key});

  @override
  State<NavigationLearn> createState() => _NavigationLearnState();
}

class _NavigationLearnState extends State<NavigationLearn>
    with NavigatorManager {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          navigatorToWidget(context, MyCollectionDemos());
        },
        child: const Icon(Icons.navigate_next_rounded),
      ),
    );
  }
}

mixin NavigatorManager {
  void navigatorToWidget(BuildContext context, Widget widget) {
    Navigator.of(context).push(MaterialPageRoute(
        builder: (context) {
          return widget;
        },
        fullscreenDialog: true,
        settings: const RouteSettings()));
  }
}
