import 'package:flutter/material.dart';
import 'package:taskmarch20/view/screenone.dart';

void main() {
  runApp(Taskapp());
}

class Taskapp extends StatelessWidget {
  const Taskapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ScreenOne(),
    );
  }
}
