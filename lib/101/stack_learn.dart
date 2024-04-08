import 'package:flutter/material.dart';

class StacLearn extends StatelessWidget {
  const StacLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Stack(
        children: [
          Positioned.fill(
              top: 90,
              child: Container(
                color: Colors.amber,
              )),
          Container(
            color: Colors.red,
            height: 100,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Container(
              color: Colors.blue,
              height: 100,
            ),
          ),
          Positioned(
              right: 0,
              left: 0,
              top: 25,
              height: 100,
              child: Container(
                color: Colors.green,
              )),
        ],
      ),
    );
  }
}
