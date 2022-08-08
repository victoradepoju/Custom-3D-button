// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:custom_3d_button/reuseables/bottom_botton.dart';
import 'package:custom_3d_button/reuseables/text_box.dart';
import 'package:custom_3d_button/reuseables/top_button.dart';

//PositionedTransition

class CustomButton extends StatelessWidget {
  final double pushDepth;
  final Color topButttonColor;
  final Color bottomButtonColor;
  final String buttonText;
  const CustomButton({
    Key? key,
    required this.pushDepth,
    required this.topButttonColor,
    required this.bottomButtonColor,
    required this.buttonText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      width: 300,
      child: Stack(
        children: [
          Positioned(
              bottom: 0,
              left: 0,
              child: BottomButton(
                topColor: bottomButtonColor,
              )),
          Positioned(
            top: 10 * pushDepth,
            left: 0,
            child: TopButton(
              topColor: topButttonColor,
            ),
          ),
          Positioned(
            top: 10 * pushDepth,
            left: 0,
            child: TextBox(buttonText: buttonText),
          ),
        ],
      ),
    );
  }
}
