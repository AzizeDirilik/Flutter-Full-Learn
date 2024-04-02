import 'package:flutter/material.dart';

class ButtonLearn extends StatelessWidget {
  const ButtonLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            TextButton(onPressed: () {}, child: const Text('Hello')),
            ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.resolveWith((states) {
                if (states.contains(MaterialState.pressed)) {
                  return Colors.green;
                }
                return null;
              })),
              child: const Text('Welcome'),
            ),
            IconButton(onPressed: () {}, icon: const Icon(Icons.abc_sharp)),
            FloatingActionButton(
                onPressed: () {}, child: const Icon(Icons.air)),
            OutlinedButton(onPressed: () {}, child: const Text('Hey')),
            InkWell(
              onTap: () {},
              child: const Text('custom'),
            ),
            const Divider(),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
                onPressed: () {},
                child: const Padding(
                  padding:
                      EdgeInsets.only(top: 20, bottom: 20, right: 40, left: 40),
                  child: Text('data'),
                ))
          ],
        ),
      ),
    );
  }
}
