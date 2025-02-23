import 'package:flutter/material.dart';
import 'package:pmdc1/Components/Custom_ListTile.dart';
import 'package:pmdc1/View/Application_Screen/Application_View.dart';
import 'package:pmdc1/View/Attendence_Screen/Attendence_View.dart';
import 'package:pmdc1/View/Change_Password_Screen/Change_Password_View.dart';
import 'package:pmdc1/View/Courses_Screen/Courses_View.dart';
import 'package:pmdc1/View/Date_Sheet_Screen/Date_Scheet_Screen_View.dart';
import 'package:pmdc1/View/Examination_Screen/Examination_View.dart';
import 'package:pmdc1/View/Home_Screen/Widgets/Home_Card.dart';
import 'package:pmdc1/View/Home_Screen/Widgets/Student_Data.dart';
import 'package:pmdc1/View/LMS_Notification_Screen/LMS_Notification_View.dart';
import 'package:pmdc1/View/Login%20Screen/Login_Screen_View.dart';
import 'package:pmdc1/View/Profile_Screen/Profile_Screen_View.dart';
import 'package:pmdc1/View/Quries_Screen/Quries_Screen_View.dart';
import 'package:pmdc1/View/Time_Table_Screen/Time_Table_View.dart';
import 'package:pmdc1/constant.dart';
import 'package:sizer/sizer.dart';

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
                      mainAxisSize: MainAxisSize.min, // Reduce extra space
                      children: [
                          Text(
                            'PMDC',
                            style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                              fontSize: 60,
                              color: kPrimaryColor,
                            ),
                          ),
                        Transform.translate(
                          offset: Offset(0, -20), // Moves text closer
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
                text: 'DashBoard',
                onTap: () {
                  Navigator.pushNamedAndRemoveUntil(context, HomeScreenView.routeName, (route) => false
                  );
                }
            ),
            CustomListTile(
                icon: Icons.notifications,
                text: 'SMS Notification',
                onTap: () {}
            ),
            CustomListTile(
                icon: Icons.notifications_on_sharp,
                text: 'LMS Notification',
                onTap: () {
                  Navigator.pushNamedAndRemoveUntil(context,LmsNotificationView.routeName, (route) => true
                  );
                }
            ),
            CustomListTile(
                icon: Icons.person,
                text: 'My Samestar',
                onTap: () {}
            ),
            CustomListTile(
                icon: Icons.receipt_long,
                text: 'Fee & Finance',
                onTap: () {}
            ),
            CustomListTile(
                icon: Icons.file_copy,
                text: 'Forms',
                onTap: () {}
            ),
            CustomListTile(
                icon: Icons.explicit,
                text: 'Examination',
                onTap: () {}
            ),
            CustomListTile(
                icon: Icons.question_answer_sharp,
                text: 'Application',
                onTap: () {}
            ),
            CustomListTile(
                icon: Icons.menu_book,
                text: 'Student HandBook',
                onTap: () {}
            ),
            Divider(
                color: kTextWhiteColor,
                thickness: 0.5
            ),
            CustomListTile(
                icon: Icons.key,
                text: 'Change Password',
                onTap: () {
                  Navigator.pushNamedAndRemoveUntil(context, ChangePasswordView.routeName, (route) => true
                  );
                }
            ),
            CustomListTile(
                icon: Icons.logout,
                text: 'Sign Out',
                onTap: () {
                  Navigator.pushNamedAndRemoveUntil(context, LoginScreenView.routesName, (route) => false
                  );
                }
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
                padding: EdgeInsets.all(16.0),
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
                              Navigator.pushNamedAndRemoveUntil(context, TimeTableView.routeName, (route) => true
                              );
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
                            Navigator.pushNamedAndRemoveUntil(context, QuriesScreenView.routeName, (route) => true
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
