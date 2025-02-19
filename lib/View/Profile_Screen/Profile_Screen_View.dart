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
            Container(
              height: 150,
              width: double.infinity,
              decoration: BoxDecoration(
                color: kPrimaryColor,
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(kDefaultPadding * 2),
                  bottomLeft: Radius.circular(kDefaultPadding * 2),
                ),
              ),
              padding: EdgeInsets.only(top: 0,left: 10,right: 10,bottom: kDefaultPadding),
              child: StudentData(
                StudentName: 'IKROO DEV',
                StudentRollNo: '12',
                StudentFiled: 'Pre-Engineering',
                StudentPic: 'assets/Profile.jpeg',
              ),
            ),

          ],
        ),
      ),

    );
  }
}
