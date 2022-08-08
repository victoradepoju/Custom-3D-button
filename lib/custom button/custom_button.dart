// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:custom_3d_button/reuseables/bottom_botton.dart';
import 'package:custom_3d_button/reuseables/top_button.dart';
import 'package:custom_3d_button/reuseables/text_box.dart';
import 'package:flutter/material.dart';

//PositionedTransition

class CustomButton extends StatelessWidget {
  final double pushDepth;
  const CustomButton({
    Key? key,
    required this.pushDepth,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      width: 300,
      child: Stack(
        children: [
          const Positioned(
              bottom: 0,
              left: 0,
              child: BottomButton(
                topColor: Color.fromARGB(255, 113, 32, 26),
              )),
          Positioned(
            top: 10 * pushDepth,
            left: 0,
            child: const TopButton(topColor: Colors.red),
          ),
          Positioned(
            top: 10 * pushDepth,
            left: 0,
            child: TextBox(buttonText: 'PUSH ME'),
          ),
        ],
      ),
    );
  }
}
