import 'package:flutter/material.dart';

class PasswordTextField extends StatefulWidget {
  const PasswordTextField({super.key, this.controller});
  final TextEditingController? controller;

  @override
  State<PasswordTextField> createState() => _PasswordTextFieldState();
}

class _PasswordTextFieldState extends State<PasswordTextField> {
  final _obscureText = '#';
  bool _isSecure = true;

  void _changeLoading() {
    setState(() {
      _isSecure = !_isSecure;
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.controller,
      autofillHints: const [AutofillHints.password],
      style: const TextStyle(color: Colors.white),
      decoration: InputDecoration(
          hintText: 'Password', suffixIcon: _onVisibilityIcon()),
      keyboardType: TextInputType.visiblePassword,
      obscureText: _isSecure,
      obscuringCharacter: _obscureText,
    );
  }

  IconButton _onVisibilityIcon() {
    return IconButton(
        onPressed: () {
          _changeLoading();
        },
        icon: AnimatedCrossFade(
            firstChild: const Icon(
              Icons.visibility_outlined,
            ),
            secondChild: const Icon(
              Icons.visibility_off_outlined,
            ),
            crossFadeState: _isSecure
                ? CrossFadeState.showFirst
                : CrossFadeState.showSecond,
            duration: const Duration(milliseconds: 500)));
    // icon: Icon(_isSecure ? Icons.visibility : Icons.visibility_off));
  }
}
