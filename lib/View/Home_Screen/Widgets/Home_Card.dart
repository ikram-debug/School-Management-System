import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pmdc1/constant.dart';
import 'package:sizer/sizer.dart';

class HomeCard extends StatelessWidget {

  final VoidCallback onpress;
  final String icon;
  final String title;
  const HomeCard({super.key,
    required this.icon,
    required this.title,
    required this.onpress,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onpress,
      child: Card(
        color: kPrimaryColor,
        elevation: 10,
        shadowColor: kPrimaryColor,
        shape: BeveledRectangleBorder(
            borderRadius: BorderRadius.circular(2)
        ),
        child: SizedBox(
          height: 12.h,
          width: 28.w,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SvgPicture.asset(
                icon,
                color: kOtherColor,
                height: 25,
                width: 25,
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                title,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodySmall!.copyWith(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
