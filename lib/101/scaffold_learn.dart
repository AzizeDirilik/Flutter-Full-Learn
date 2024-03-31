import 'package:flutter/material.dart';

class ScafflodLearnView extends StatelessWidget {
  const ScafflodLearnView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Scaffold Samples')),
      body: const Center(child: Text('Merhaba')),
      floatingActionButton: FloatingActionButton(
        child: const Text('A'),
        onPressed: () {
          showModalBottomSheet(
              context: context,
              builder: (context) => Container(
                    height: 200,
                  ));
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      drawer: const Drawer(),
      bottomNavigationBar: BottomNavigationBar(items: const [
        BottomNavigationBarItem(icon: Icon(Icons.abc_outlined), label: 'A'),
        BottomNavigationBarItem(icon: Icon(Icons.abc_outlined), label: 'B'),
      ]),
    );
  }
}
