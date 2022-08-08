import 'package:flutter/material.dart';

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
