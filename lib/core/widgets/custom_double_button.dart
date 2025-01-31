import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomDoubleButton extends StatelessWidget {
  const CustomDoubleButton({
    super.key,
    required this.text,
    required this.textColor,
    required this.buttonColor,
    this.boredrRadius,
    this.fontSize, this.onPressed,
  });

  final String text;
  final Color textColor;
  final Color buttonColor;
  final double? fontSize;
  final BorderRadius? boredrRadius;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: boredrRadius ?? BorderRadius.circular(12),
          ),
          backgroundColor: buttonColor,
        ),
        child: Text(
          text,
          style: Styles.textStyle18.copyWith(
              color: textColor,
              fontWeight: FontWeight.w900,
              fontSize: fontSize),
        ),
      ),
    );
  }
}
