import 'package:flutter/material.dart';
import 'package:pmdc1/constant.dart';

class CustomRow1 extends StatelessWidget {
  final String label;
  final String value;

  const CustomRow1({
    Key? key,
    required this.label,
    required this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          label,
          style: Theme.of(context).textTheme.bodySmall!.copyWith(
            fontSize: 16,
            color: kTextLightColor,
          ),
        ),
        SizedBox(width: 60),
        Text(
          value,
          style: Theme.of(context).textTheme.titleMedium!.copyWith(
            fontSize: 16,
            color: kTextBlackColor,
          ),
        ),
      ],
    );
  }
}
