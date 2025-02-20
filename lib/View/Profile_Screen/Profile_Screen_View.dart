import 'package:flutter/material.dart';
import 'package:pmdc1/View/Home_Screen/Widgets/Student_Data.dart';
import 'package:pmdc1/constant.dart';

class ProfileScreenView extends StatefulWidget {
  static String routeName = 'ProfileScreenView';

  @override
  State<ProfileScreenView> createState() => _ProfileScreenViewState();
}

class _ProfileScreenViewState extends State<ProfileScreenView> {
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
                onpress: () {}
            ),
            Text(
              'Profile Screen',
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
