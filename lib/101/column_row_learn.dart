import 'package:flutter/material.dart';

class ColumnRowLearn extends StatelessWidget {
  const ColumnRowLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Expanded(
              flex: 4,
              child: Row(
                children: [
                  Expanded(flex: 4, child: Container(color: Colors.amber)),
                  Expanded(flex: 2, child: Container(color: Colors.orange)),
                  Expanded(flex: 2, child: Container(color: Colors.red)),
                  Expanded(flex: 2, child: Container(color: Colors.purple)),
                ],
              )),
          const Spacer(
            flex: 2,
          ),
          const Expanded(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Data'),
              Text('Data'),
              Text('Data'),
            ],
          )),
          const SizedBox(
            height: ProjectCardHeight.cardHeight,
            child: Column(children: [Expanded(child: Text('Hello')),
            Expanded(child: Text('Hello')),
            Expanded(child: Text('Hello')),
            ]),
          )
        ],
      ),
    );
  }
}

class ProjectCardHeight{
  static const double cardHeight = 200;
}
