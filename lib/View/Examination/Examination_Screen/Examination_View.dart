import 'package:flutter/material.dart';
import 'package:pmdc1/View/Examination/Examination_Screen/Details_Screens/Cls_6th_Result.dart';
import 'package:pmdc1/View/Examination/Examination_Screen/Details_Screens/Cls_7th_Result.dart';
import 'package:pmdc1/View/Examination/Examination_Screen/Details_Screens/Cls_8th_Result.dart';
import 'package:pmdc1/View/Examination/Examination_Screen/Details_Screens/Cls_9th_Result.dart';
import 'package:pmdc1/View/Examination/Examination_Screen/Widgets/Custom_Containers.dart';
import 'package:pmdc1/View/Home_Screen/Widgets/Student_Data.dart';
import 'package:pmdc1/View/Profile_Screen/Profile_Screen_View.dart';
import 'package:pmdc1/constant.dart';

class ExaminationView extends StatefulWidget {
  static String routeName = 'ExaminationView';

  @override
  State<ExaminationView> createState() => _ExaminationScreenState();
}

class _ExaminationScreenState extends State<ExaminationView> {
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
                StudentRollNo: '12',
                StudentFiled: 'Pre Engineering',
                StudentPic: 'assets/Profile.jpeg',
                onpress: () {
                  Navigator.pushNamedAndRemoveUntil(context, ProfileScreenView.routeName, (route) => true
                  );
                }
            ),
            Expanded(
              child:SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        height: 30,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: kPrimaryColor,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              'S.No',
                              style: Theme.of(context).textTheme.titleMedium!.copyWith(
                                fontSize: 14,
                              ),
                            ),
                            SizedBox(
                              width: 50,
                            ),
                            Text(
                              'Transcript',
                              style: Theme.of(context).textTheme.titleMedium!.copyWith(
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      CustomContainers(
                          SNo: '1',
                          Title: 'Class 6th (2020-21)',
                          onpress: () {
                            Navigator.pushNamedAndRemoveUntil(context, Cls6thResult.routeName, (route) => true
                            );
                          },
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      CustomContainers(
                          SNo: '2',
                          Title: 'Class 7th (2021-22)',
                          onpress: () {
                            Navigator.pushNamedAndRemoveUntil(context, Cls7thResult.routeName, (route) => true
                            );
                          }
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      CustomContainers(
                          SNo: '3',
                          Title: 'Class 8th (2022-23)',
                          onpress: () {
                            Navigator.pushNamedAndRemoveUntil(context, Cls8thResult.routeName, (route) => true
                            );
                          }
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      CustomContainers(
                          SNo: '4',
                          Title: 'Class 9th (2023-24)',
                          onpress: () {
                            Navigator.pushNamedAndRemoveUntil(context, Cls9thResult.routeName, (route) => true
                            );
                          }
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
