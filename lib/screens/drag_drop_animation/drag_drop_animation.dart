import 'package:animation_app/screens/drag_drop_animation/drag_drop_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DragDropAnimation extends StatelessWidget {
  const DragDropAnimation({super.key});

  @override
  Widget build(BuildContext context) {
    DragDropController mutable = Provider.of<DragDropController>(context);
    DragDropController inmutable =
        Provider.of<DragDropController>(context, listen: false);

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Drag & Drop Animation"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                LongPressDraggable(
                  data: 'box',
                  childWhenDragging: Container(
                    height: 200,
                    width: 200,
                  ),
                  feedback: Container(
                    height: 220,
                    width: 220,
                  ),
                  child: Container(
                    height: 200,
                    width: 200,
                    color: mutable.boxAccepted ? Colors.blue : Colors.red,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
