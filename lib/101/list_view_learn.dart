import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_101/product/language/language_items.dart';

class ListViewLearn extends StatefulWidget {
  const ListViewLearn({super.key});

  @override
  State<ListViewLearn> createState() => _ListViewLearnState();
}

class _ListViewLearnState extends State<ListViewLearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: ListView(
          children: [
            FittedBox(
              child: Text(
                LanguageItems.welcomeTitle,
                style: Theme.of(context).textTheme.bodySmall,
                maxLines: 1,
              ),
            ),
            const _VerticalContainer(color: Colors.blue),
            const Divider(),
            SizedBox(
                height: 300,
                child:
                    ListView(scrollDirection: Axis.horizontal, children: const [
                  _HorizontalContainer(color: Colors.pink),
                  _HorizontalContainer(color: Colors.white),
                  _HorizontalContainer(color: Colors.pink),
                  _HorizontalContainer(color: Colors.white),
                  _HorizontalContainer(color: Colors.purple),
                ])),
            IconButton(onPressed: () {}, icon: const Icon(Icons.close)),
            FittedBox(
              child: Text(
                LanguageItems.welcomeTitle,
                style: Theme.of(context).textTheme.bodySmall,
                maxLines: 1,
              ),
            ),
            const _VerticalContainer(color: Colors.blue),
            const Divider(),
            SizedBox(
                height: 300,
                child:
                    ListView(scrollDirection: Axis.horizontal, children: const [
                  _HorizontalContainer(color: Colors.pink),
                  _HorizontalContainer(color: Colors.white),
                  _HorizontalContainer(color: Colors.pink),
                  _HorizontalContainer(color: Colors.white),
                  _HorizontalContainer(color: Colors.purple),
                ])),
            IconButton(onPressed: () {}, icon: const Icon(Icons.close)),
            const _ListDemo()
          ],
        ),
        
        );
  }
}

class _HorizontalContainer extends StatelessWidget {
  const _HorizontalContainer({
    required this.color,
  });
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      width: 100,
    );
  }
}

class _VerticalContainer extends StatelessWidget {
  const _VerticalContainer({
    required this.color,
  });

  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      height: 300,
    );
  }
}
class _ListDemo extends StatefulWidget {
  const _ListDemo();

  @override
  State<_ListDemo> createState() => __ListDemoState();
}


class __ListDemoState extends State<_ListDemo> {
  @override
  void initState() {
    super.initState();
    if (kDebugMode) {
      print('Burada');
    }
  }

  @override
  void dispose() {
    super.dispose();
    if (kDebugMode) {
      print('Exit');
    }
  }
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}