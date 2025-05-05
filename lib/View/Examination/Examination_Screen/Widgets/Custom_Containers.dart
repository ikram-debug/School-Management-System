import 'package:flutter/material.dart';
import 'package:pmdc1/constant.dart';

class CustomContainers extends StatelessWidget {

  final String SNo;
  final String Title;
  final VoidCallback onpress;

  const CustomContainers({super.key,
    required this.SNo,
    required this.Title,
    required this.onpress
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onpress,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16),
        height: 40,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [kPrimaryColor,kTextBlackColor,kSecondaryColor]),
          borderRadius: BorderRadius.circular(5),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
                SNo,
              style: Theme.of(context).textTheme.titleMedium!.copyWith(
                fontSize: 16,
              ),
            ),
            SizedBox(
              width: 50,
            ),
            Text(
              Title,
              style: Theme.of(context).textTheme.titleMedium!.copyWith(
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
