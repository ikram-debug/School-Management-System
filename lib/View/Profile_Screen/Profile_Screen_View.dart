import 'package:flutter/material.dart';
import 'package:pmdc1/View/Home_Screen/Widgets/Student_Data.dart';
import 'package:pmdc1/View/Profile_Screen/Widget/Custom_Container.dart';
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
            Expanded (
              child: Padding(
                  padding:EdgeInsets.only(top: 25,left: 16,right: 16,bottom: 16),
                child: SingleChildScrollView (
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Expanded (
                            child: CustomContainer(
                                title: 'Registration No :',
                                title1: '2020-ASDF-2021',
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Expanded (
                            child: CustomContainer(
                              title: 'Acedimic Year :',
                              title1: '2020-2023',
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Expanded (
                            child: CustomContainer(
                              title: 'Class :',
                              title1: 'X-II',
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Expanded (
                            child: CustomContainer(
                              title: 'Roll NO :',
                              title1: '12',
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Expanded (
                            child: CustomContainer(
                              title: 'Date Of Admission :',
                              title1: '31-Oct 2023',
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Expanded (
                            child: CustomContainer(
                              title: 'Date Of Birth :',
                              title1: '18-05-2005',
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      CustomContainer(
                          title: 'Email :',
                          title1: 'Ikroodev.x360@gmail.com',
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      CustomContainer(
                        title: 'F Name :',
                        title1: 'Farif Gul',
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      CustomContainer(
                        title: 'Current Session :',
                        title1: '2024',
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      CustomContainer(
                        title: 'Status :',
                        title1: 'Active',
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
