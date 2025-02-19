import 'package:flutter/material.dart';
import 'package:pmdc1/constant.dart';

class CustomInkWellButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final double fontsize;

  const CustomInkWellButton({
    Key? key,
    required this.text,
    required this.onPressed,
    required this.fontsize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Text(
        text,
        style: TextStyle(
          fontSize: fontsize,
          color: kPrimaryColor,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
