import 'package:flutter/material.dart';

import 'package:bmi_calculator/styles.dart';

class IconContent extends StatelessWidget {
  final Icon icon;
  final String label;

  const IconContent({super.key, required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        icon,
        const SizedBox(
          height: 15,
        ),
        Text(
          label,
          style: kLabelTextStyle,
        ),
      ],
    );
  }
}
