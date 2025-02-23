import 'package:flutter/material.dart';
import 'package:pmdc1/View/Home_Screen/Widgets/Student_Data.dart';
import 'package:pmdc1/View/Profile_Screen/Profile_Screen_View.dart';
import 'package:pmdc1/constant.dart';

class ApplicationView extends StatefulWidget {
  static String routeName = 'ApplicationView';

  @override
  State<ApplicationView> createState() => _ApplicationViewState();
}

class _ApplicationViewState extends State<ApplicationView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         backgroundColor: kPrimaryColor,
        centerTitle: true,
        iconTheme: IconThemeData(
          color: kTextWhiteColor,
        ),
        title: Text(
          'PMDC',
          style: Theme.of(context).textTheme.headlineSmall!.copyWith(
            fontSize: 20
          ),
        ),
      ),
      body: Container(
        color: kOtherColor,
        child: Column(
          children: [
            StudentData(
                StudentName: 'IKROO DEV',
                StudentRollNo:'12',
                StudentFiled: 'Pre Engineering',
                StudentPic: 'assets/Profile.jpeg',
                onpress: () {
                  Navigator.pushNamedAndRemoveUntil(context, ProfileScreenView.routeName, (route) => true
                  );
                }
            ),
            Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                      padding: EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        Text(
                          'Application Screen',
                          style: TextStyle(
                            fontSize: 30,
                            color: kTextBlackColor,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
            ),
          ],
        ),
      ),
    );
  }
}
