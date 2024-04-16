import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_101/product/language/language_items.dart';

class TextFieldLearn extends StatefulWidget {
  const TextFieldLearn({super.key});

  @override
  State<TextFieldLearn> createState() => __TextFieldLearnState();
}

class __TextFieldLearnState extends State<TextFieldLearn> {
  FocusNode focusNodeTextFieldOne = FocusNode();
  FocusNode focusNodeTextFieldTwo = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          TextField(
            maxLength: 20,
            buildCounter: (context,
                {int? currentLength, bool? isFocused, maxLength}) {
              return _animatedContainer(currentLength);
            },
            keyboardType: TextInputType.emailAddress,
            autofillHints: const [AutofillHints.email],
            inputFormatters: [
              TextProjectInputFormatter()._formatter,
            ],
            textInputAction: TextInputAction.next,
            focusNode: focusNodeTextFieldOne,
            decoration: _InputDecorator().emailInput,
          ),
          TextFormField(
            focusNode: focusNodeTextFieldTwo,
           
          ),
        ],
      ),
    );
  }

  AnimatedContainer _animatedContainer(int? currentLength) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 100),
      height: 10,
      width: 10.0 * (currentLength ?? 0),
      //color: Colors.green[100 * ((currentLength ?? 0) ~/ 2 )],
      color: Colors.pink,
    );
  }
}

class TextProjectInputFormatter {
  final _formatter = TextInputFormatter.withFunction((oldValue, newValue) {
    if (newValue.text == "a") {
      return oldValue;
    } else {
      return newValue;
    }
  });
}

class _InputDecorator {
  final emailInput = const InputDecoration(
    prefixIcon: Icon(Icons.mail),
    border: OutlineInputBorder(),
    labelText: LanguageItems.mailTitle,
  );
}
