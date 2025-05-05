import 'package:flutter/material.dart';
import 'package:pmdc1/constant.dart';

class CustomListTile extends StatelessWidget {
  final IconData icon;
  final String text;
  final VoidCallback onTap;
  final double sizebox;

  const CustomListTile({
    Key? key,
    required this.icon,
    required this.text,
    required this.onTap,
    required this.sizebox
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        icon,
        size: 15,
        color: kTextWhiteColor,
      ),
      minLeadingWidth: sizebox,
      title: Text(
        text,
        style: Theme.of(context).textTheme.bodySmall!.copyWith(
          fontSize: 14,
          color: kTextWhiteColor,
        ),
      ),
      onTap: onTap,
    );
  }
}
