import 'package:flutter/material.dart';
import 'package:pmdc1/Components/Custom_ListTile.dart';
import 'package:pmdc1/View/Application_Screen/Application_View.dart';
import 'package:pmdc1/View/Change_Password_Screen/Change_Password_View.dart';
import 'package:pmdc1/View/Home_Screen/Widgets/Home_Card.dart';
import 'package:pmdc1/View/Home_Screen/Widgets/Student_Data.dart';
import 'package:pmdc1/View/Login%20Screen/Login_Screen_View.dart';
import 'package:pmdc1/View/Profile_Screen/Profile_Screen_View.dart';
import 'package:pmdc1/View/Student_HandBook_Screen/Student_HandBook_View.dart';
import 'package:pmdc1/constant.dart';
import 'package:sizer/sizer.dart';
import '../Examination/Date_Sheet_Screen/Date_Scheet_Screen_View.dart';
import '../Examination/Examination_Screen/Examination_View.dart';
import '../Examination/UMF_Notice_Screen/UFM_Notice_View.dart';
import '../Fee&Finance/Fee_Record_Screen/Fee_Screen_View.dart';
import '../Fee&Finance/Fee_Schedule_Screen/Fee_Schedule_View.dart';
import '../Fee&Finance/Semetar_Registration_Screen/Semestart_Registration_View.dart';
import '../Forms/Student_Affidavit/Student_Affidavit_View.dart';
import '../My_Class/Attendence_Screen/Attendence_View.dart';
import '../My_Class/Courses_Screen/Courses_View.dart';
import '../My_Class/Quries_Screen/Quries_Screen_View.dart';
import '../My_Class/Time_Table_Screen/Time_Table_View.dart';
import '../Notifications/LMS_Notification_Screen/LMS_Notification_View.dart';
import '../Notifications/SMS_Notification_Screen/SMS_Notification_View.dart';

class HomeScreenView extends StatefulWidget {
 static String routeName = 'HomeScreenView';

  @override
  State<HomeScreenView> createState() => _HomeScreenViewState();
}

class _HomeScreenViewState extends State<HomeScreenView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        backgroundColor: kPrimaryColor,
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: kTextWhiteColor,
                borderRadius: BorderRadius.only(bottomRight: Radius.circular(20)),
              ),
              child: Center(
                child: Column(
                  children: [
                    sizedBox,
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'PMDC',
                          style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                            fontSize: 60,
                            color: kPrimaryColor,
                          ),
                        ),
                        Transform.translate(
                          offset: Offset(0, -20),
                          child: Text(
                            'Peshawar',
                            style: Theme.of(context).textTheme.bodySmall!.copyWith(
                              fontSize: 14,
                              color: kPrimaryColor,
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            CustomListTile(
              icon: Icons.dashboard,
              sizebox: 40,
              text: 'DashBoard',
              onTap: () {
                Navigator.pushNamedAndRemoveUntil(context, HomeScreenView.routeName, (route) => false);
              },
            ),
            ExpansionTile(
              maintainState: true,
              leading: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.notifications_on_sharp,
                    size: 15,
                    color: kTextWhiteColor,
                  ),
                  SizedBox(
                    width: 25,
                  ),
                ],
              ),
              title:  Text(
                "Notifications",
                style: Theme.of(context).textTheme.bodySmall!.copyWith(
                  fontSize: 14,
                  color: kTextWhiteColor,
                ),
              ),
              iconColor: kTextWhiteColor,
              collapsedIconColor: kTextWhiteColor,
              children: [
                Padding(
                    padding: EdgeInsets.only(left: 16),
                  child: Column(
                    children: [
                      CustomListTile(
                        icon: Icons.notifications,
                        sizebox: 40,
                        text: 'SMS Notification',
                        onTap: () {
                          Navigator.pushNamedAndRemoveUntil(context, SmsNotificationView.routeName, (route) => true
                          );
                        },
                      ),
                      CustomListTile(
                        icon: Icons.notifications,
                        sizebox: 40,
                        text: 'LMS Notification',
                        onTap: () {
                          Navigator.pushNamedAndRemoveUntil(context, LmsNotificationView.routeName, (route) => true);
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
            ExpansionTile(
              maintainState: true,
              leading: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.person,
                    size: 15,
                    color: kTextWhiteColor,
                  ),
                  SizedBox(width: 25),
                ],
              ),
              title: Text(
                "My Class",
                style: Theme.of(context).textTheme.bodySmall!.copyWith(
                  fontSize: 14,
                  color: kTextWhiteColor,
                ),
              ),
              iconColor: kTextWhiteColor,
              collapsedIconColor: kTextWhiteColor,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: Column(
                    children: [
                      CustomListTile(
                        icon: Icons.book,
                        sizebox: 20,
                        text: 'Courses',
                        onTap: () {
                          Navigator.pushNamedAndRemoveUntil(
                              context, CoursesView.routeName, (route) => true);
                        },
                      ),
                      CustomListTile(
                        icon: Icons.schedule,
                        text: 'Time Table',
                        sizebox: 20,
                        onTap: () {
                          Navigator.pushNamedAndRemoveUntil(
                              context, TimeTableView.routeName, (route) => true);
                        },
                      ),

                      CustomListTile(
                        icon: Icons.people,
                        sizebox: 20,
                        text: 'Attendence',
                        onTap: () {
                          Navigator.pushNamedAndRemoveUntil(
                              context, AttendenceView.routeName, (route) => true);
                        },
                      ),

                      CustomListTile(
                        icon: Icons.feedback,
                        sizebox: 20,
                        text: 'Student Quries',
                        onTap: () {
                          Navigator.pushNamedAndRemoveUntil(
                              context, QuriesScreenView.routeName, (route) => true);
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
            ExpansionTile(
              maintainState: true,
              leading: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.receipt_long,
                    color: kTextWhiteColor,
                    size: 15,
                  ),
                  SizedBox(
                    width: 25,
                  ),
                ],
              ),
                title: Text(
                  'Fee & Finance',
                  style: Theme.of(context).textTheme.bodySmall!.copyWith(
                    fontSize: 14,
                    color: kTextWhiteColor,
                  ),
                ),
              iconColor: kTextWhiteColor,
              collapsedIconColor: kTextWhiteColor,
              children: [
                Padding(
                    padding: EdgeInsets.only(left: 16.0),
                  child: Column(
                    children: [
                      CustomListTile(
                          icon: Icons.schedule_outlined,
                          sizebox: 25,
                          text: 'Fee Shedule',
                          onTap: () {
                            Navigator.pushNamedAndRemoveUntil(context, FeeScheduleView.routeName, (route) => true
                            );
                          },
                      ),
                      CustomListTile(
                        icon: Icons.book_outlined,
                        sizebox: 25,
                        text: 'Fee Record',
                        onTap: () {
                          Navigator.pushNamedAndRemoveUntil(context, FeeScreenView.routName, (route) => true
                          );
                        },
                      ),
                      CustomListTile(
                        icon: Icons.folder_copy_outlined,
                        sizebox: 25,
                        text: 'Samestar Registration',
                        onTap: () {
                          Navigator.pushNamedAndRemoveUntil(context, SemestartRegistrationView.routeName, (route) => true
                          );
                        },
                      ),
                    ],
                  ),
                )
              ],
            ),
            ExpansionTile(
              maintainState: true,
                leading: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.file_copy,
                      color: kTextWhiteColor,
                      size: 15,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                  ],
                ),
              title: Text(
                'Forms',
                style: Theme.of(context).textTheme.bodySmall!.copyWith(
                  fontSize: 14,
                  color: kTextWhiteColor,
                ),
              ),
              iconColor: kTextWhiteColor,
              collapsedIconColor: kTextWhiteColor,
              children: [
                Padding(
                    padding: EdgeInsets.only(left: 16.0),
                  child: Column(
                    children: [
                      CustomListTile(
                        icon: Icons.book_outlined,
                        sizebox: 25,
                        text: 'Student Affidavit',
                        onTap: () {
                          Navigator.pushNamedAndRemoveUntil(context, StudentAffidavitView.routeName, (route) => true
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
           ExpansionTile(
             maintainState: true,
             leading: Row(
               mainAxisSize: MainAxisSize.min,
               children: [
                 Icon(
                   Icons.explicit,
                   size: 15,
                 ),
                 SizedBox(
                   width: 20,
                 )
               ],
             ),
             title: Text(
               'Examination',
               style: Theme.of(context).textTheme.bodySmall!.copyWith(
                 fontSize: 14,
                 color: kTextWhiteColor,
               ),
             ),
             iconColor: kTextWhiteColor,
             collapsedIconColor: kTextWhiteColor,
             children: [
               Padding(
                   padding: EdgeInsets.only(left: 16.0),
                 child:Column(
                   children: [
                     CustomListTile(
                       icon: Icons.question_mark,
                       sizebox: 25,
                       text: 'UFM Notice',
                       onTap: () {
                         Navigator.pushNamedAndRemoveUntil(context, UfmNoticeView.routeName, (route) => true
                         );
                       },
                     ),
                     CustomListTile(
                         icon: Icons.date_range_outlined,
                         sizebox: 25,
                         text: 'Date Sheet',
                         onTap: () {
                           Navigator.pushNamedAndRemoveUntil(context, DateScheetScreenView.routeName, (route) => true
                           );
                         },
                     ),
                     CustomListTile(
                       icon: Icons.explicit,
                       sizebox: 25,
                       text: 'Transcript',
                       onTap: () {
                         Navigator.pushNamedAndRemoveUntil(context, ExaminationView.routeName, (route) => true
                         );
                       },
                     ),
                   ],
                 ),
               ),
             ],
           ),
            CustomListTile(
              icon: Icons.question_answer_sharp,
              sizebox: 40,
              text: 'Application',
              onTap: () {
                Navigator.pushNamedAndRemoveUntil(context, ApplicationView.routeName, (route) => true
                );
              },
            ),
            CustomListTile(
              icon: Icons.menu_book,
              sizebox: 40,
              text: 'Student HandBook',
              onTap: () {
                Navigator.pushNamedAndRemoveUntil(context, StudentHandbookView.routeName, (route) => true
                );
              },
            ),
            Divider(
              color: kTextWhiteColor, // Divider ka color white
              thickness: 0.5,
            ),
            CustomListTile(
              icon: Icons.key,
              sizebox: 40,
              text: 'Change Password',
              onTap: () {
                Navigator.pushNamedAndRemoveUntil(context, ChangePasswordView.routeName, (route) => true);
              },
            ),
            CustomListTile(
              icon: Icons.logout,
              sizebox: 40,
              text: 'Sign Out',
              onTap: () {
                Navigator.pushNamedAndRemoveUntil(context, LoginScreenView.routesName, (route) => false);
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        centerTitle: true,  // Center the title
        iconTheme: IconThemeData(color: Colors.white),  // Set drawer icon color to white
        title: Text(
          'PMDC',
          style: Theme.of(context).textTheme.headlineSmall!.copyWith(
            fontSize: 20,
            color: kTextWhiteColor,
          ),
        ),
      ),
      body: Container(
        color: Colors.grey.shade300,
        child: Column(
          children: [
            StudentData(
                StudentName: 'IKROO DEV',
                StudentRollNo: '12',
                StudentFiled: 'Pre Engineering',
                StudentPic: 'assets/Profile.jpeg',
                onpress: () {
                  Navigator.pushNamedAndRemoveUntil(context,ProfileScreenView.routeName,(route) => true
                  );
                }
            ),
            SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Padding(
                padding: EdgeInsets.only(top: 20,left: 8,right: 8,bottom: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pushNamedAndRemoveUntil(context, LmsNotificationView.routeName, (route) =>true
                        );
                      },
                      child: Card(
                        color: kPrimaryColor,
                        elevation: 10,
                        shadowColor: kPrimaryColor,
                        shape: BeveledRectangleBorder(
                            borderRadius: BorderRadius.circular(1)
                        ),
                        child: SizedBox(
                          height: 13.h,
                          width: double.infinity,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height: 25,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    color: kTextWhiteColor,
                                    borderRadius: BorderRadius.circular(5)
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'LMS Notifications',
                                        style: Theme.of(context).textTheme.titleMedium!.copyWith(
                                          color: kPrimaryColor,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Icon(
                                        Icons.notifications_on_sharp,
                                        size: 17,
                                        color: kPrimaryColor,
                                      ),
                                    ],
                                  ),
                                ),
                                Divider(
                                  color: kTextWhiteColor,
                                  thickness: 0.5,
                                ),
                                Center(
                                  child: Text(
                                    'Assignment Added for Physics',
                                    style: Theme.of(context).textTheme.bodySmall!.copyWith(
                                      fontSize: 13,
                                    ),
                                  ),
                                ),
                                Divider(
                                  color: kTextWhiteColor,
                                  thickness: 0.5,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        HomeCard(
                            icon: 'assets/timetable.svg',
                            title: 'Time Table',
                            onpress: () {
                              Navigator.pushNamed(context, TimeTableView.routeName);
                            },
                        ),
                        HomeCard(
                            icon: 'assets/Attendence.svg',
                            title: 'Attendence',
                          onpress: () {
                              Navigator.pushNamedAndRemoveUntil(context, AttendenceView.routeName, (route) => true
                              );
                          },
                        ),
                        HomeCard(
                            icon: 'assets/Application.svg',
                            title: 'Applications',
                            onpress: () {
                              Navigator.pushNamedAndRemoveUntil(context, ApplicationView.routeName, (route) => true
                              );
                            },
                        )
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        HomeCard(
                          icon: 'assets/Courses.svg',
                          title: 'courses',
                          onpress: () {
                            Navigator.pushNamedAndRemoveUntil(context, CoursesView.routeName, (route) => true
                            );
                          },
                        ),
                        HomeCard(
                          icon: 'assets/exam.svg',
                          title: 'Examination',
                          onpress: () {
                            Navigator.pushNamedAndRemoveUntil(context, ExaminationView.routeName, (route) => true
                            );
                          },
                        ),
                        HomeCard(
                          icon: 'assets/datesheet.svg',
                          title: 'DateSheet',
                          onpress: () {
                            Navigator.pushNamedAndRemoveUntil(context, DateScheetScreenView.routeName, (route) =>true
                            );
                          },
                        )
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        HomeCard(
                          icon: 'assets/resume.svg',
                          title: 'Quries',
                          onpress: () {
                            Navigator.pushNamedAndRemoveUntil(context, QuriesScreenView.routeName, (route) => true
                            );
                          },
                        ),
                        HomeCard(
                          icon: 'assets/fee.svg',
                          title: 'Fee Record',
                          onpress: () {
                            Navigator.pushNamedAndRemoveUntil(context,FeeScreenView.routName, (route) => true
                            );
                          },
                        ),
                        HomeCard(
                          icon: 'assets/logout.svg',
                          title: 'Sign Out',
                          onpress: () {
                            Navigator.pushNamedAndRemoveUntil(context, LoginScreenView.routesName, (route) => true
                            );
                          },
                        )
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
