

import 'package:flutter/material.dart';

class ReCard extends StatelessWidget {
  final Color color;
  final Widget? child;

  const ReCard({super.key, required this.color, this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: color,
      ),
      child: child,
    );
  }
}