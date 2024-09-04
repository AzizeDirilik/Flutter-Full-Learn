import 'package:flutter/material.dart';
import 'package:flutter_101/202/packages/launch_manager.dart';
import 'package:flutter_101/202/packages/package_bar.dart';

class PackageLearnView extends StatefulWidget {
  const PackageLearnView({super.key});

  @override
  State<PackageLearnView> createState() => _PackageLearnViewState();
}

class _PackageLearnViewState extends State<PackageLearnView> with LaunchMixin {
  final double _loadingBarSize = 60.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        floatingActionButton: FloatingActionButton(
            child: const Icon(Icons.add),
            onPressed: () {
              launchURL('https://pub.dev/packages/url_launcher');
            }),
        body: LoadingBar1(
          size: _loadingBarSize,
        ));
  }
}
