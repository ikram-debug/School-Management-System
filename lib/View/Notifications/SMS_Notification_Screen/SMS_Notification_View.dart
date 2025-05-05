import 'package:flutter/material.dart';
import 'package:pmdc1/View/Home_Screen/Widgets/Student_Data.dart';
import 'package:pmdc1/View/Profile_Screen/Profile_Screen_View.dart';
import 'package:pmdc1/constant.dart';

import 'Widget/Coustom_Container.dart';

class SmsNotificationView extends StatefulWidget {
 static String routeName = 'SmsNotificationView';

  @override
  State<SmsNotificationView> createState() => _SmsNotificationViewState();
}

class _SmsNotificationViewState extends State<SmsNotificationView> {
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
                StudentFiled: 'Pre-Engineering',
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
                        LectureCard1(
                          title: '12-Apr-2025',
                          checkText: 'Dear Students Eid Mubarak\nYour regular classes for this session will commence by Monday 8-Apr-2025\nCheck your updated time table to avoid confussion\nSSO\nPMDC',
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        LectureCard1(
                            title: '10-Apr-2025',
                            checkText: 'The class of Maths has been cancelled due to weather issue\nSSO\nPMDC',
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        LectureCard1(
                          title: '11-Apr-2025',
                          checkText: '1:Last Date of fee Submission is 18-Apr-2025\n2:Late Submission will be charge per day 250 \nSSO\nPMDC',
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        LectureCard1(
                          title: '12-Apr-2025',
                          checkText: 'Class Location of Physics has been changed to G3 for today\nSSO\nPMDC',
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        LectureCard1(
                          title: '12-Apr-2025',
                          checkText: 'Dear student your forthcoming paper of Bio\nScection: C\nTeacher: Ikram khan\nExam Hall: N2\nSSO\nPMDC',
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        LectureCard1(
                          title: '13-Apr-2025',
                          checkText: 'Dear student your forthcoming paper of Math\nScection: C\nTeacher: Madeeha\nExam Hall: M1\nSSO\nPMDC',
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        LectureCard1(
                          title: '14-Apr-2025',
                          checkText: 'Dear student your forthcoming paper of Che\nScection: C\nTeacher: Irfan\nExam Hall: E3\nSSO\nPMDC',
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        LectureCard1(
                          title: '15-Apr-2025',
                          checkText: 'Dear student your forthcoming paper of Phy\nScection: C\nTeacher: Shehzad\nExam Hall: Main Hall\nSSO\nPMDC',
                        ),
                        SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  ),
                )
            ),
          ],
        ),
      ),
    );
  }
}
