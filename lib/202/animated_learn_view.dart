import 'package:flutter/material.dart';
import 'package:flutter_101/202/image_learn_202.dart';

class AnimatedLearnView extends StatefulWidget {
  const AnimatedLearnView({super.key});

  @override
  State<AnimatedLearnView> createState() => _AnimatedLearnViewState();
}

class _AnimatedLearnViewState extends State<AnimatedLearnView> {
  bool _isvisible = false;

  void _changeVisible() {
    setState(() {
      _isvisible = !_isvisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            _changeVisible();
          },
        ),
        appBar: AppBar(
          centerTitle: true,
          title: AnimatedImageWidget(isvisible: _isvisible),
        ),
        body: Text(
          'Animated',
          style: context.textTheme(Colors.pink).headlineLarge,
        ));
  }
}

class AnimatedImageWidget extends StatelessWidget {
  const AnimatedImageWidget({
    super.key,
    required bool isvisible,
  }) : _isvisible = isvisible;

  final bool _isvisible;

  @override
  Widget build(BuildContext context) {
    return AnimatedCrossFade(
        firstChild: ImagePaths.book.toWidget(height: 50),
        secondChild: const SizedBox.shrink(),
        crossFadeState:
            _isvisible ? CrossFadeState.showFirst : CrossFadeState.showSecond,
        duration: _DurationItems.durationLow);
  }
}

extension BuildContextExtention on BuildContext {
  TextTheme textTheme(Color? color) {
    if (color != null) {
      return Theme.of(this).textTheme.apply(displayColor: color);
    }
    return Theme.of(this).textTheme;
  }
}

class _DurationItems {
  static const durationLow = Duration(seconds: 1);
}
