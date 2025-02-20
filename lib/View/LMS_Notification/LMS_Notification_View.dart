import 'package:flutter/material.dart';
import 'package:pmdc1/View/Home_Screen/Widgets/Student_Data.dart';
import 'package:pmdc1/View/Profile_Screen/Profile_Screen_View.dart';
import 'package:pmdc1/constant.dart';

class LmsNotificationView extends StatefulWidget {
  static String routeName = 'LmsNotificationView';

  @override
  State<LmsNotificationView> createState() => _LmsNotificationViewState();
}

class _LmsNotificationViewState extends State<LmsNotificationView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'PMDC',
          style: Theme.of(context).textTheme.headlineSmall!.copyWith(
            fontSize: 20,
          ),
        ),
      ),
      body: Container(
        color: kOtherColor,
        child: Column(
          children: [
            StudentData(
                StudentName: 'IKROO DEV',
                StudentRollNo: '12',
                StudentFiled: 'Pre Engineering',
                StudentPic: 'assets/Profile.jpeg',
                onpress: () {
                  Navigator.pushNamedAndRemoveUntil(context, ProfileScreenView.routeName, (route) => true
                  );
                }
            ),
            Text(
              'LMS Notification Screen',
              style: TextStyle(
                fontSize: 40,
                color: kTextBlackColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
