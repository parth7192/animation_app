import 'package:animation_app/screens/drag_drop_animation/drag_drop_animation.dart';
import 'package:animation_app/screens/home_page/home_page.dart';
import 'package:flutter/cupertino.dart';

class AppRoutes {
  AppRoutes._();
  static final AppRoutes instance = AppRoutes._();

  String home = '/';
  String drag_drop = 'drag_drop';

  Map<String, WidgetBuilder> allRoutes = {
    '/': (Context) => const HomePage(),
    'drag_drop': (Context) => const DragDropAnimation(),
  };
}
