import 'package:flutter/material.dart';

class ContainerSizedBoxLearn extends StatelessWidget {
  const ContainerSizedBoxLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          SizedBox(
            width: 200,
            height: 200,
            child: Text('Hello' * 100),
          ),
          Container(
            height: 50,
            constraints: const BoxConstraints(
                maxHeight: 150, maxWidth: 100, minWidth: 100),
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.all(10),
            decoration: ProjectContainerDecoration(),
            child: Text('aa' * 2,textAlign: TextAlign.center),
          )
        ],
      ),
    );
  }
}

class ProjectContainerDecoration extends BoxDecoration {
  ProjectContainerDecoration()
      : super(
          gradient: const LinearGradient(colors: [Colors.amber, Colors.lime]),
          boxShadow: const [
            BoxShadow(color: Colors.blue, offset: Offset(0.1, 1), blurRadius: 2)
          ],
          border: Border.all(width: 2, color: Colors.yellowAccent),
          borderRadius: BorderRadius.circular(10),
        );
}
