import 'package:flutter/material.dart';
import 'package:test_scroll_chaser/horizontal_scroll/horizontal_scroll_screen.dart';
import 'package:test_scroll_chaser/vertical_scroll/vertical_scroll_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
//      home: VerticalScrollScreen(),
    home: HorizontalScrollScreen(),
    );
  }
}
