import 'package:flutter/material.dart';

class CustomVerticalScrollBar extends StatefulWidget {
  const CustomVerticalScrollBar({super.key, required this.scrollController});

  final ScrollController scrollController;

  @override
  State<CustomVerticalScrollBar> createState() =>
      _CustomVerticalScrollBarState();
}

class _CustomVerticalScrollBarState extends State<CustomVerticalScrollBar> {
  double _alignmentY = -1.0;

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
      alignment: Alignment(0.8, _alignmentY),
      child: const Icon(Icons.ac_unit),
    );
  }

  ///
  void _scrollingListener() {
    setState(() {
      final position = widget.scrollController.position;
      final ratio = position.pixels / position.maxScrollExtent;
      _alignmentY = ratio * 2 - 1;
    });
  }
}
