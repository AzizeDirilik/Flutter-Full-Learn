import 'package:flutter/material.dart';

class StatelessLearn extends StatelessWidget {
  const StatelessLearn({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(children: [
        const TextTitle(name: 'Hello'),
        sizedBox(),
        const _CustomContainer(),
        sizedBox(),
        const _CustomContainer(),
      ]),
    );
  }

  SizedBox sizedBox() => const SizedBox(
        height: 50,
      );
}

class _CustomContainer extends StatelessWidget {
  const _CustomContainer();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      decoration: const BoxDecoration(color: Colors.amber),
    );
  }
}

class TextTitle extends StatelessWidget {
  const TextTitle({super.key, required this.name});
  final String name;

  @override
  Widget build(BuildContext context) {
    return Text(
      name,
      style: Theme.of(context).textTheme.headlineMedium,
    );
  }
}
