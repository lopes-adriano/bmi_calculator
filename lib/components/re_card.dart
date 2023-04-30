import 'package:bmi_calculator/styles.dart';
import 'package:flutter/material.dart';

class ReCard extends StatelessWidget {
  final Color color;
  final Widget? child;
  final Function? onPress;

  const ReCard({super.key, required this.color, this.child, this.onPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress != null ? () => onPress!() : null,
      child: Container(
        alignment: Alignment.center,
        margin: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: color,
        ),
        child: child,
      ),
    );
  }
}

class RoundIconButton extends StatelessWidget {
  const RoundIconButton(
      {super.key, required this.icon, required this.onPressed});

  final IconData? icon;
  final Function? onPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressed != null ? () => onPressed!() : null,
      shape: const CircleBorder(),
      elevation: 6.0,
      fillColor: const Color(0xFF4C4F5E),
      constraints: const BoxConstraints.tightFor(
        width: 50,
        height: 50,
      ),
      child: Icon(icon),
    );
  }
}

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
