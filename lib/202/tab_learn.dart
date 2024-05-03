import 'package:flutter/material.dart';
import 'package:flutter_101/101/list_view_builder.dart';
import 'package:flutter_101/101/list_view_learn.dart';

class TabLearn extends StatefulWidget {
  const TabLearn({super.key});

  @override
  State<TabLearn> createState() => _TabLearnState();
}

class _TabLearnState extends State<TabLearn> with TickerProviderStateMixin {
  late final TabController _tabController;
  final double _notchedMargin = 10;

  @override
  void initState() {
    super.initState();
    _tabController =
        TabController(length: _MyTabViews.values.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: _MyTabViews.values.length,
        child: Scaffold(
          extendBody: true,
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              _tabController.animateTo(0);
            },
          ),
          bottomNavigationBar: BottomAppBar(
            notchMargin: _notchedMargin,
            shape: const CircularNotchedRectangle(),
            child: TabBar(
                controller: _tabController,
                tabs: _MyTabViews.values
                    .map((e) => Tab(
                          text: e.name,
                        ))
                    .toList()),
          ),
          appBar: AppBar(
            bottom: _appBarTab(),
          ),
          body: _tabBar(),
        ));
  }

  TabBar _appBarTab() {
    return TabBar(
        indicatorColor: Colors.white,
        labelColor: Colors.pink,
        unselectedLabelColor: Colors.grey,
        controller: _tabController,
        tabs: _MyTabViews.values
            .map((e) => Tab(
                  text: e.name,
                ))
            .toList());
  }

  TabBarView _tabBar() {
    return TabBarView(
        physics: const NeverScrollableScrollPhysics(),
        controller: _tabController,
        children: const [
          ListViewLearn(),
          ListViewBuilder(),
        ]);
  }
}

enum _MyTabViews { home, profile }
