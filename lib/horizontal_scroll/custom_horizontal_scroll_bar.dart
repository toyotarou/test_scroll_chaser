import 'package:flutter/material.dart';

class CustomHorizontalScrollBar extends StatefulWidget {
  const CustomHorizontalScrollBar({super.key, required this.scrollController});

  final ScrollController scrollController;

  @override
  State<CustomHorizontalScrollBar> createState() =>
      _CustomHorizontalScrollBarState();
}

class _CustomHorizontalScrollBarState extends State<CustomHorizontalScrollBar> {
  double _alignmentX = -0.95;

  ///
  @override
  void initState() {
    widget.scrollController.addListener(_scrollingListener);

    super.initState();
  }

  ///
  @override
  void dispose() {
    widget.scrollController.dispose();
    super.dispose();
  }

  ///
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment(0.9, _alignmentX),
      child: const Icon(Icons.ac_unit),
    );
  }

  ///
  void _scrollingListener() {
    setState(() {
      final position = widget.scrollController.position;
      final ratio = position.pixels / position.maxScrollExtent;
      _alignmentX = ratio * 2 - 1;
    });
  }
}
