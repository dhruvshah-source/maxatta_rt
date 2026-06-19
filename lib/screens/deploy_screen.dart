import 'package:flutter/material.dart';

class DeployScreen extends StatelessWidget {
  const DeployScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xFF050505),
      body: SafeArea(
        child: Center(
          child: Text(
            'DEPLOY SCREEN',
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