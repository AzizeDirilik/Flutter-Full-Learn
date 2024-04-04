import 'package:flutter/material.dart';

class CardLearn extends StatelessWidget {
  const CardLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Column(
        children: [
          _CardCustom(
            child: SizedBox(
              height: 200,
              width: 200,
              child: Center(
                  child:
                      Text('Merhaba', style: TextStyle(color: Colors.black))),
            ),
          ),
          
        ],
      ),
    );
  }
}

class _CardCustom extends StatelessWidget {
  final Widget child;
  //static final  cardShape = RoundedRectangleBorder(borderRadius: BorderRadius.circular(20));

  const _CardCustom({required this.child});
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: CardMargin.cardMargin,
      //shape: cardShape,
      child: child,

    );
  }
}

class CardMargin {
  static const cardMargin = EdgeInsets.symmetric(horizontal: 30);
  //static final  cardShape = RoundedRectangleBorder(borderRadius: BorderRadius.circular(20));
}
