import 'package:flutter/material.dart';
import 'package:flutter_101/product/language/language_items.dart';

class CounterHelloButton extends StatefulWidget {
  const CounterHelloButton({super.key});

  @override
  State<CounterHelloButton> createState() => _CounterHelloButtonState();
}

class _CounterHelloButtonState extends State<CounterHelloButton> {
  int _counterCustom = 0;
  void _updateCounter() {
    setState(() {
      ++_counterCustom;
    }); 
  }

  final String _welcomeTitle = LanguageItems.welcomeTitle;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: _updateCounter,
        child: Text('$_welcomeTitle $_counterCustom'));
  }
}
