import 'package:flutter/material.dart';

class NavigateLearnDetail extends StatefulWidget {
  const NavigateLearnDetail({super.key, this.isOkey = false});
  final bool isOkey;

  @override
  State<NavigateLearnDetail> createState() => _NavigateLearnDetailState();
}

class _NavigateLearnDetailState extends State<NavigateLearnDetail> {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    //ModalRoute.of(context).settings.arguments;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: ElevatedButton.icon(
            onPressed: () {
              Navigator.of(context).pop(!widget.isOkey);
            },
            icon: Icon(
              Icons.check,
              color: widget.isOkey ? Colors.red : Colors.blue,
            ),
            label: widget.isOkey ? const Text('Red') : const Text('Onayla')),
      ),
    );
  }
}
