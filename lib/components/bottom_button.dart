import 'package:bmi_calculator/styles.dart';
import 'package:flutter/material.dart';

class BottomButton extends StatelessWidget {
  const BottomButton({super.key, required this.onPressed, required this.text});

  final Function? onPressed;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: kBottomContainerHeight,
      margin: const EdgeInsets.only(top: 10),
      child: ElevatedButton(
        onPressed: onPressed != null ? () => onPressed!() : null,
        style: ElevatedButton.styleFrom(backgroundColor: kBottomContainerColor),
        child: Text(
          text,
          style: kBottomContainerText,
        ),
      ),
    );
  }
}