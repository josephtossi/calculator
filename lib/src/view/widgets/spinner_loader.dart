import 'package:flutter/material.dart';

class SpinnerLoader extends StatefulWidget {
  const SpinnerLoader({super.key});

  @override
  // ignore: library_private_types_in_public_api
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
                child: Image.asset('lib/assets/logo_small.png',scale: 3,)
              );
            },
          ),
        ),
      ),
    );
  }
}