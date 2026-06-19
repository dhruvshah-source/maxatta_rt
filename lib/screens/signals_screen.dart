import 'package:flutter/material.dart';

class SignalsScreen extends StatelessWidget {
  const SignalsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xFF050505),
      body: SafeArea(
        child: Center(
          child: Text(
            'SIGNALS SCREEN',
            style: TextStyle(
              color: Color(0xFF12F7A0),
              fontSize: 28,
              fontWeight: FontWeight.w800,
            ),
          ),
        ),
      ),
    );
  }
}