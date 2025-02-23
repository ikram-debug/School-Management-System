import 'package:flutter/material.dart';
import 'package:pmdc1/View/Home_Screen/Widgets/Student_Data.dart';
import 'package:pmdc1/View/Profile_Screen/Profile_Screen_View.dart';
import 'package:pmdc1/constant.dart';

class TimeTableView extends StatefulWidget {
  static String routeName = 'TimeTableView ';

  @override
  State<TimeTableView> createState() => _TimeTableViewState();
}

class _TimeTableViewState extends State<TimeTableView> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Scaffold(
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
              color: kTextWhiteColor,
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
                  },
              ),
              Expanded(
                  child: SingleChildScrollView(
                    child: Padding(
                        padding: EdgeInsets.all(16.0),
                      child: Column(
                        children: [
                          Text(
                            'Time Table Screen',
                            style: TextStyle(
                              fontSize: 20,
                              color: kTextBlackColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
              ),
            ],
          ),
        ),
      ),
    );
  }
}
