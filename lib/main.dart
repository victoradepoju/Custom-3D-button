import 'package:custom_3d_button/custom%20button/custom_button.dart';
import 'package:custom_3d_button/custom_button_animation_controller.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const HomePage());
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '3D Custom Button',
      theme: ThemeData(primaryColor: Colors.orange),
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'My Custom 3D Button',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25,
            ),
          ),
          centerTitle: true,
        ),
        backgroundColor: Colors.grey,
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: const [
              AnimatedButton(
                buttonText: 'PUSH ME',
                topButttonColor: Colors.red,
                bottomButtonColor: Color.fromARGB(255, 113, 32, 26),
              ),
              SizedBox(height: 20),
              AnimatedButton(
                  buttonText: 'ENROLL NOW',
                  topButttonColor: Colors.lime,
                  bottomButtonColor: Color.fromARGB(255, 242, 242, 243)),
              SizedBox(height: 20),
              AnimatedButton(
                buttonText: 'ADD TO CART',
                topButttonColor: Colors.blue,
                bottomButtonColor: Colors.blueGrey,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
