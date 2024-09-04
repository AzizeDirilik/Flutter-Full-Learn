import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class StatefullLifeCycle extends StatefulWidget {
  const StatefullLifeCycle({super.key, required this.message});
  final String message;

  @override
  State<StatefullLifeCycle> createState() => _StatefullLifeCycleState();
}

class _StatefullLifeCycleState extends State<StatefullLifeCycle> {
  late String _message;
  late final bool _isOdd;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (kDebugMode) {
      print('a');
    }
  }

  @override
  void didUpdateWidget(covariant StatefullLifeCycle oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (kDebugMode) {
      print('b');
    }
    if (oldWidget.message != widget.message) {
      _message = widget.message;
      setState(() {});
      if (kDebugMode) {
        print('d');
      }
    }
  }

  @override
  void initState() {
    super.initState();
    _message = widget.message;
    _isOdd = widget.message.length.isOdd;
    _computeName();
    if (kDebugMode) {
      print('c');
    }
  }

  void _computeName() {
    if (_isOdd) {
      _message += "Cift";
    } else {
      _message += "Tek";
    }
  }

  @override
  void dispose() {
    super.dispose();
    _message = "";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text(_message)),
        body: _isOdd
            ? TextButton(
                onPressed: () {
                  setState(() {
                    _message = 'b';
                  });
                },
                child: Text(_message))
            : ElevatedButton(onPressed: () {}, child: Text(_message)));
  }
}
