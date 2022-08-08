import 'package:custom_3d_button/custom%20button/custom_button.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const AnimatedButton());
}

class AnimatedButton extends StatefulWidget {
  const AnimatedButton({Key? key}) : super(key: key);

  @override
  State<AnimatedButton> createState() => _AnimatedButtonState();
}

class _AnimatedButtonState extends State<AnimatedButton>
    with SingleTickerProviderStateMixin {
  late final AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 150),
    );
    // _animationController.addListener(_handleTapDown);
    // _animationController.addListener(_handleTapUp);
  }

  @override
  void dispose() {
    _animationController.dispose();
    // _animationController.removeListener(_handleTapDown);
    // _animationController.removeListener(_handleTapCancel);
    super.dispose();
  }

  void _handleTapDown() {
    _animationController.forward();
    print(_animationController.value);
  }

  void _handleTapUp() {
    _animationController.reverse();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: Center(
          child: Container(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: GestureDetector(
                onTapDown: (_) => _handleTapDown(),
                onTapUp: (_) => _handleTapUp(),
                child: AnimatedBuilder(
                    animation: _animationController,
                    builder: (context, Widget? child) {
                      final pushDepth = _animationController.value;
                      return CustomButton(pushDepth: pushDepth);
                    }),
              ),
            ),
          ),
        ),
      ),
    );
  }
}