import 'package:flutter/material.dart';

class CustomWidgetLearn extends StatelessWidget {
  const CustomWidgetLearn({super.key});
  final String title = 'Food';
  final String title2 = 'Delivery Food';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Padding(
                  padding: _ButtonPadding().normal2xPadding,
                  child: _CustomFoodButton(
                    title: title2,
                    onPressed: () {},
                  ),
                )),
          ),
          Padding(
            padding: _ButtonPadding().normal2xPadding,
            child: _CustomFoodButton(
              title: title,
              onPressed: () {},
            ),
          ),
          _CustomFoodButton(
            title: title,
            onPressed: () {},
          )
        ],
      ),
    );
  }
}

class _CustomFoodButton extends StatelessWidget {
  const _CustomFoodButton(
      // ignore: unused_element
      {super.key, required this.title, required this.onPressed});
  final String title;
  final void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: _ColorUtility().buttonBackgroundColor),
        onPressed: onPressed,
        child: Padding(
          padding: _ButtonPadding().normalPadding,
          child: Text(
            title,
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                color: _ColorUtility().textColor, fontWeight: FontWeight.bold),
          ),
        ));
  }
}

class _ColorUtility {
  final Color textColor = Colors.white;
  final Color buttonBackgroundColor = Colors.red;
}

class _ButtonPadding {
  final EdgeInsets normalPadding = const EdgeInsets.all(10);
  final EdgeInsets normal2xPadding = const EdgeInsets.all(16);
}
