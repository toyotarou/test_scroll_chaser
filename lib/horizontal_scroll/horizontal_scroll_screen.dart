import 'package:flutter/material.dart';
import 'package:test_scroll_chaser/horizontal_scroll/custom_horizontal_scroll_bar.dart';

class HorizontalScrollScreen extends StatefulWidget {
  const HorizontalScrollScreen({super.key});

  @override
  State<HorizontalScrollScreen> createState() => _HorizontalScrollScreenState();
}

class _HorizontalScrollScreenState extends State<HorizontalScrollScreen> {
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
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  height: MediaQuery.of(context).size.height,
                  width: 100,
                  color: bgColors[index % bgColors.length],
                );
              },
              itemCount: 10,
            ),
            CustomHorizontalScrollBar(scrollController: scrollController),
          ],
        ),
      ),
    );
  }
}
