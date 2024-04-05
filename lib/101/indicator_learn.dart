import 'package:flutter/material.dart';

class IndicatorLearn extends StatelessWidget {
  const IndicatorLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: const [_AppbarRedCircularProgressInducator()],
        ),
        body: const Column(
          children: [
            LinearProgressIndicator(),
            CenterCircularProgressIndicator(),
          ],
        ));
  }
}

class _AppbarRedCircularProgressInducator extends StatelessWidget {
  const _AppbarRedCircularProgressInducator({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CircularProgressIndicator(
      color: Colors.red,
      backgroundColor: Colors.blueGrey,
    );
  }
}

class CenterCircularProgressIndicator extends StatelessWidget {
  const CenterCircularProgressIndicator({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CircularProgressIndicator();
  }
}
