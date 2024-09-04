import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class LoadingBar1 extends StatelessWidget {
  const LoadingBar1({super.key, this.size});

  final double? size;
  final _defaultSize = 40.0;

  @override
  Widget build(BuildContext context) {
    return SpinKitWave(
      color: Colors.green,
      size: size ?? _defaultSize,
    );
  }
}
