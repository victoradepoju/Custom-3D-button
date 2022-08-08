// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:custom_3d_button/custom%20button/custom_button.dart';

class AnimatedButton extends StatefulWidget {
  final Color topButttonColor;
  final Color bottomButtonColor;
  final String buttonText;
  const AnimatedButton({
    Key? key,
    required this.topButttonColor,
    required this.bottomButtonColor,
    required this.buttonText,
  }) : super(key: key);

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
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  void _handleTapDown() {
    _animationController.forward();
  }

  void _handleTapUp() {
    _animationController.reverse();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: GestureDetector(
          onTapDown: (_) => _handleTapDown(),
          onTapUp: (_) => _handleTapUp(),
          child: AnimatedBuilder(
              animation: _animationController,
              builder: (context, Widget? child) {
                final pushDepth = _animationController.value;
                return CustomButton(
                  pushDepth: pushDepth,
                  bottomButtonColor: widget.bottomButtonColor,
                  topButttonColor: widget.topButttonColor,
                  buttonText: widget.buttonText,
                );
              }),
        ),
      ),
    );
  }
}
