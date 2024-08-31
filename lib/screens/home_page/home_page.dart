import 'package:animation_app/routes/app_routes.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            OutlinedButton(
              onPressed: () {
                Navigator.pushNamed(context, AppRoutes.instance.drag_drop);
              },
              child: const Text(
                "Drag & Drop",
                style: TextStyle(color: Colors.black, fontSize: 30),
              ),
            )
          ],
        ),
      ),
    );
  }
}
