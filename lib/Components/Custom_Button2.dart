import 'package:flutter/material.dart';
import 'package:pmdc1/constant.dart';
import 'package:sizer/sizer.dart';


class DefaultButton extends StatelessWidget {
  final VoidCallback onPress;
  final String title;

  const DefaultButton({
    Key? key,
    required this.onPress,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16),
        width: double.infinity,
        height: 6.h, // Fixed for mobile
        decoration: BoxDecoration(
          color: kPrimaryColor,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title,
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
