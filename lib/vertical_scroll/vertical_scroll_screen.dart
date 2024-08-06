import 'package:flutter/material.dart';
import 'package:test_scroll_chaser/vertical_scroll/custom_vertical_scroll_bar.dart';

class VerticalScrollScreen extends StatefulWidget {
  const VerticalScrollScreen({super.key});

  @override
  State<VerticalScrollScreen> createState() => _VerticalScrollScreenState();
}

class _VerticalScrollScreenState extends State<VerticalScrollScreen> {
  final scrollController = ScrollController();

  List<Color> bgColors = [
    Colors.red,
    Colors.orange,
    Colors.yellow,
    Colors.green,
    Colors.blue,
    Colors.indigo,
    Colors.purple,
  ];

  ///
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            ListView.builder(
              controller: scrollController,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  height: 100,
                  color: bgColors[index % bgColors.length],
                );
              },
              itemCount: 10,
            ),
            CustomVerticalScrollBar(scrollController: scrollController),
          ],
        ),
      ),
    );
  }
}
