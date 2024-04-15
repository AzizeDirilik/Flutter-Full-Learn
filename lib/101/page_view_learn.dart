import 'package:flutter/material.dart';
import 'package:flutter_101/101/icon_learn.dart';
import 'package:flutter_101/101/image_learn.dart';

class PageViewLearn extends StatefulWidget {
  const PageViewLearn({super.key});

  @override
  State<PageViewLearn> createState() => _PageViewLearnState();
}

class _PageViewLearnState extends State<PageViewLearn> {
  final _pageController = PageController(viewportFraction: 0.7);
  int _currentPageIndex = 0;
  void _updatePageIndex(int index) {
    setState(() {
      _currentPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Row(
        
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(_currentPageIndex.toString()),
          _floatingLeftButton(),
          _buttonPadding()
        ],
      ),
      appBar: AppBar(),
      body: _pageView(),
    );
  }

  PageView _pageView() {
    return PageView(
        controller: _pageController,
        onPageChanged: _updatePageIndex,
        children: [
          const ImageLearn(),
          const IconLearnView(),
          Container(
            color: Colors.orange,
          ),
          Container(
            color: Colors.blue,
          ),
        ]);
  }

  Padding _buttonPadding() {
    return Padding(
          padding: const EdgeInsets.only(left: 10),
          child: _floatingRightButton(),
        );
  }

  FloatingActionButton _floatingRightButton() {
    return FloatingActionButton(
            onPressed: () {
              _pageController.nextPage(
                  duration: _DurationUtility._durationLow,
                  curve: Curves.slowMiddle);
            },
            child: const Icon(Icons.chevron_right),
          );
  }

  FloatingActionButton _floatingLeftButton() {
    return FloatingActionButton(
            onPressed: () {
              _pageController.previousPage(
                  duration: _DurationUtility._durationLow,
                  curve: Curves.slowMiddle);
            },
            child: const Icon(Icons.chevron_left));
  }
}

class _DurationUtility {
  static const _durationLow = Duration(seconds: 1);
}
