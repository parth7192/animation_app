import 'package:flutter/material.dart';

class HeroAnimation extends StatelessWidget {
  const HeroAnimation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Hero Animation"),
      ),
      body: Container(
        height: 200,
        width: 200,
        color: Colors.red,
      ),
    );
  }
}
