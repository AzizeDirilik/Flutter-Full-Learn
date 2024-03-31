import 'package:flutter/material.dart';

class TextLearnView extends StatelessWidget {
  const TextLearnView({super.key});
  final String name = 'Azize';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              ('Welcome $name'),
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
              textAlign: TextAlign.center,
              style: Theme.of(context)
                  .textTheme
                  .headlineMedium
                  ?.copyWith(color: Colors.amber,fontStyle: FontStyle.italic,),
            ),
            Text(
              ('Welcome $name'),
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
              textAlign: TextAlign.center,
              style: ProjectStyles.welcomeStyle
            ),
            Text(
              ('Welcome $name'),
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
              textAlign: TextAlign.center,
              style: Theme.of(context)
                  .textTheme
                  .headlineMedium
                  ?.copyWith(color: ProjectColors.welcomeColor,fontStyle: FontStyle.italic,),
            ),
          ],
        ),
      ),
    );
  }
}

class ProjectStyles {
  static TextStyle welcomeStyle = TextStyle(
      decoration: TextDecoration.underline,
      fontSize: 16,
      fontStyle: FontStyle.italic,
      color: Colors.indigo[300],
      letterSpacing: 2);
}
class ProjectColors{
  static Color welcomeColor = Colors.deepPurpleAccent;
}