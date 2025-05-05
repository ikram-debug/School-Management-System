import 'package:flutter/material.dart';

import '../../../../constant.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final Icon icon;
  final VoidCallback onpress;

  const CustomButton({
    super.key,
    required this.title,
    required this.icon,
    required this.onpress,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onpress,
      child: Container(
        height: 40,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [kPrimaryColor, kTextBlackColor,kSecondaryColor],
          ),
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(15),
            bottomRight: Radius.circular(15),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title,
              style: Theme.of(context).textTheme.titleMedium!.copyWith(
                fontSize: 20,
              ),
            ),
            SizedBox(width: 8), // optional spacing
            icon,
          ],
        ),
      ),
    );
  }
}
