import 'package:flutter/material.dart';
import 'package:flutter_101/202/image_learn_202.dart';

const double kZero = 0;

class AnimatedLearnView extends StatefulWidget {
  const AnimatedLearnView({super.key});

  @override
  State<AnimatedLearnView> createState() => _AnimatedLearnViewState();
}

class _AnimatedLearnViewState extends State<AnimatedLearnView>
    with TickerProviderStateMixin {
  bool _isVisible = false;
  bool _isOpacity = false;
  late AnimationController controller;

  @override
  void initState() {
    super.initState();
    controller =
        AnimationController(vsync: this, duration: _DurationItems.durationLow);
  }

  void _changeVisible() {
    setState(() {
      _isVisible = !_isVisible;
    });
  }

  void _changeOpacity() {
    setState(() {
      _isOpacity = !_isOpacity;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            _changeVisible();
            controller.animateTo(_isVisible ? 1 : kZero);
          },
        ),
        appBar: AppBar(centerTitle: true, title: _titleAnimated()),
        body: Column(
          children: [
            ListTile(
              title: AnimatedOpacity(
                duration: _DurationItems.durationLow,
                opacity: _isOpacity ? kZero : 1,
                child: const Text('data'),
              ),
              trailing: IconButton(
                  onPressed: () {
                    _changeOpacity();
                  },
                  icon: const Icon(Icons.satellite)),
            ),
            AnimatedDefaultTextStyle(
              style: (_isVisible
                      ? context.textTheme().displayMedium
                      : context.textTheme().bodyLarge) ??
                  const TextStyle(),
              duration: _DurationItems.durationLow,
              child: const Text(
                'Animated',
              ),
            ),
            AnimatedIcon(icon: AnimatedIcons.menu_arrow, progress: controller),
            AnimatedContainer(
              duration: _DurationItems.durationLow,
              height:
                  _isVisible ? kZero : MediaQuery.of(context).size.width * 0.2,
              width: MediaQuery.of(context).size.height * 0.2,
              color: Colors.purple,
              margin: const EdgeInsets.all(5),
            ),
            Expanded(
              child: AnimatedList(
                itemBuilder: (context, index, animation) {
                  return const Text('data');
                },
              ),
            ),
            const Expanded(
                child: Stack(
              children: [
                AnimatedPositioned(
                    top: 5,
                    duration: _DurationItems.durationLow,
                    child: Text('selam'))
              ],
            ))
          ],
        ));
  }

  AnimatedCrossFade _titleAnimated() {
    return AnimatedCrossFade(
        firstChild: ImagePaths.book.toWidget(height: 50),
        secondChild: const SizedBox.shrink(),
        crossFadeState:
            _isVisible ? CrossFadeState.showFirst : CrossFadeState.showSecond,
        duration: _DurationItems.durationLow);
  }
}

extension BuildContextExtention on BuildContext {
  TextTheme textTheme() {
    return Theme.of(this).textTheme;
  }
}

class _DurationItems {
  static const durationLow = Duration(seconds: 1);
}
