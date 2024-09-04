import 'package:flutter/material.dart';

class IconLearnView extends StatelessWidget {
  const IconLearnView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Hello')),
      body: Column(
        children: [
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.message_outlined),
              iconSize: IconSizes.iconSmall,
              color: Theme.of(context).colorScheme.onSurface)
        ],
      ),
    );
  }
}

class IconSizes {
  static double iconSmall = 50;
}
