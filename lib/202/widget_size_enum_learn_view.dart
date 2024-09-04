import 'package:flutter/material.dart';

class WidgetSizeEnumLearnView extends StatefulWidget {
  const WidgetSizeEnumLearnView({super.key});

  @override
  State<WidgetSizeEnumLearnView> createState() =>
      _WidgetSizeEnumLearnViewState();
}

class _WidgetSizeEnumLearnViewState extends State<WidgetSizeEnumLearnView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Card(
        
        child: Container(
          height: WidgetSize.normalCardHeight.value(),
        ),
      ),
    );
  }
}

enum WidgetSize { normalCardHeight, circleProfileWidth }

extension WidgetSizeExtansion on WidgetSize {
  double value() {
    switch (this) {
      case WidgetSize.normalCardHeight:
        return 70.0;
      case WidgetSize.circleProfileWidth:
        return 25.0;
    }
  }
}
