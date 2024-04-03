import 'package:flutter/material.dart';

class PaddingLearn extends StatelessWidget {
  const PaddingLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: ProjectPadding.pagePaddingVertical +
            ProjectPadding.pagePaddingHorizontal,
        child: Column(children: [
          Container(color: Colors.deepPurple, height: 100),
          Padding(
            padding: ProjectPadding.pagePaddingHorizontal +
                ProjectPadding.pagePaddingVertical,
            child: Container(color: Colors.deepPurple, height: 100),
          ),
        ]),
      ),
    );
  }
}

class ProjectPadding {
  static const pagePaddingVertical = EdgeInsets.symmetric(vertical: 10);
  static const pagePaddingHorizontal = EdgeInsets.symmetric(horizontal: 20);
}
