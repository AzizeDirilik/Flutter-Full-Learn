import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_101/101/image_learn.dart';

class NoteDemosAppView extends StatelessWidget {
  const NoteDemosAppView({super.key});
  final String _title = 'Create your first note';
  final String _subTitle = 'Ad a note';
  final String _buttonText = 'Create a Note';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[50],
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle.dark,
      ),
      body: Padding(
        padding: ProjectPadding.horizontalPadding,
        child: Column(
          children: [
            SizedBox(
                height: 300, child: ImagePng(name: ImagePath().bookWithApple)),
            _TitleWidget(title: _title),
            Padding(
              padding: ProjectPadding.horizontalPadding +
                  ProjectPadding.verticalPadding,
              child: _Paragraph(subTitle: _subTitle * 10),
            ),
            const Spacer(),
            _createButton(context),
            _createTextButton(),
            const SizedBox(height: ButtonSize.buttonNormalHeight,)
          ],
        ),
      ),
    );
  }

  SizedBox _createTextButton() {
    return SizedBox(
            height: ButtonSize.buttonNormalHeight,
            child: TextButton(
                onPressed: () {},
                child: Text(
                  _subTitle,
                  style: const TextStyle(color: Colors.black),
                )),
          );
  }

  ElevatedButton _createButton(BuildContext context) {
    return ElevatedButton(
        onPressed: () {},
        child: SizedBox(
            height: ButtonSize.buttonNormalHeight,
            child: Center(
                child: Text(
              _buttonText,
              style: Theme.of(context).textTheme.titleMedium,
            ))));
  }
}

class _Paragraph extends StatelessWidget {
  const _Paragraph(
      // ignore: unused_element
      {Key? key, this.textAlign = TextAlign.center, required this.subTitle})
      : super(key: key);
  final TextAlign textAlign;
  final String subTitle;
  @override
  Widget build(BuildContext context) {
    return Text(
      subTitle,
      textAlign: textAlign,
      style: Theme.of(context).textTheme.labelLarge?.copyWith(
            color: Colors.black,
          ),
    );
  }
}

class _TitleWidget extends StatelessWidget {
  const _TitleWidget({
    // ignore: unused_element
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: Theme.of(context)
          .textTheme
          .headlineMedium
          ?.copyWith(color: Colors.black, fontWeight: FontWeight.bold),
    );
  }
}

class ProjectPadding {
  static const horizontalPadding = EdgeInsets.symmetric(horizontal: 20);
  static const verticalPadding = EdgeInsets.symmetric(vertical: 10);
}

class ButtonSize {
  static const double buttonNormalHeight = 50;
}
