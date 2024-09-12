import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'MyApp/my_app.dart';
import 'screens/drag_drop_animation/drag_drop_controller.dart';
import 'screens/hero_animation/hero_animation_controller.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => DragController()),
        ChangeNotifierProvider(create: (_) => HeroAnimationController()),
      ],
      child: const MyApp(),
    ),
  );
}
