// ignore_for_file: public_member_api_docs, sort_constructors_first
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
            child: const TextBox(buttonText: 'PUSH ME'),
          ),
        ],
      ),
    );
  }
}

class TopButton extends StatelessWidget {
  final Color topColor;
  const TopButton({
    Key? key,
    required this.topColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 300,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        // border: Border.all(color: Colors.grey, width: 2),
        color: topColor,
        boxShadow: const [
          BoxShadow(
            blurRadius: 10,
            color: Colors.grey,
          ),
        ],
      ),
    );
  }
}

class BottomButton extends StatelessWidget {
  final Color topColor;
  const BottomButton({
    Key? key,
    required this.topColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 300,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        // border: Border.all(color: Colors.grey, width: 2),
        color: topColor,
        boxShadow: const [
          BoxShadow(
            blurRadius: 10,
            color: Colors.grey,
          ),
        ],
      ),
    );
  }
}

class TextBox extends StatelessWidget {
  final String buttonText;
  const TextBox({
    Key? key,
    required this.buttonText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: 300,
      child: Center(
        child: Text(
          buttonText,
          style: const TextStyle(
            fontSize: 20,
            color: Colors.white,
            fontWeight: FontWeight.w900,
          ),
        ),
      ),
    );
  }
}
