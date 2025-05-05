import 'package:flutter/material.dart';
import 'package:pmdc1/constant.dart';

class CustomContainer extends StatelessWidget {
  final String title;
  final String title1;
  const CustomContainer({super.key,
  required this.title,
    required this.title1
  });

  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context).size;
    return Container(
        width: double.infinity,
        color: kTextWhiteColor,
        padding: EdgeInsets.only(left: kDefaultPadding/4, right: kDefaultPadding/4,top: kDefaultPadding/4),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: Theme.of(context).textTheme.bodySmall!.copyWith(
                  color: kTextLightColor,
                  fontWeight: FontWeight.w600,
                  fontSize:  14// mq.height * .7
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title1,
                  style: Theme.of(context).textTheme.titleMedium!.copyWith(
                      color: kTextBlackColor,
                      fontWeight: FontWeight.w400,
                      fontSize: 14
                  ),
                ),
                Icon(
                  Icons.lock,
                  size: 16,
                ),
              ],
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width/1,
              child:Divider(
                thickness: 1.0,
              ),
            )
          ],
        )
    );
  }
}
