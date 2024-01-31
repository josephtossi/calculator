import 'package:calculator/src/theme/constants.dart';
import 'package:flutter/material.dart';

class SpinnerLoader extends StatefulWidget {
  const SpinnerLoader({super.key});

  @override
  _SpinnerLoaderState createState() => _SpinnerLoaderState();
}

class _SpinnerLoaderState extends State<SpinnerLoader>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    )..repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // todo: in case we have more complex equation for loaders
    return Center(
      child: Container(
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: AnimatedBuilder(
            animation: _controller,
            builder: (BuildContext context, Widget? child) {
              return Transform.rotate(
                angle: _controller.value * 2.0 * 3.141592,
                child: Text(
                  'Calculator',
                  textAlign: TextAlign.center,
                  style: Constant.textStyle,
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
