import 'package:flutter/material.dart';
import 'package:pmdc1/View/Home_Screen/Widgets/Student_Data.dart';
import 'package:pmdc1/View/Profile_Screen/Profile_Screen_View.dart';
import 'package:pmdc1/constant.dart';

import 'Widget/Coustom_Container.dart';

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
            Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                      padding: EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        LectureCard(
                            title: 'Lecture Added for Maths',
                            checkText: 'Check Your Lecture',
                            teacherName: 'Mohsin Ahmad',
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        LectureCard(
                            title: 'Announcement Added For English',
                            checkText: 'Quiz in upcomming class \n Topic: Write essay on Kashmir Day',
                            teacherName: 'Ikram Khan',
                        ),
                        LectureCard(
                            title: 'Assignment Added for Bio',
                            checkText: 'Draw The Shape of heart and also write its function in detail \n DeadLine: 10-MAy-2025',
                            teacherName: 'Madeeha Gohar',
                        ),
                        LectureCard(
                          title: 'Lecture Added for Eng',
                          checkText: 'Check Your Lecture',
                          teacherName: 'Hadija',
                        ),
                        LectureCard(
                          title: 'Lecture Added for Phy',
                          checkText: 'Check Your Lecture',
                          teacherName: 'Noor ul Ain',
                        ),
                        LectureCard(
                          title: 'Lecture Added for Che',
                          checkText: 'Check Your Lecture',
                          teacherName: 'Furqan Naasir',
                        ),
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
