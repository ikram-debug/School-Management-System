import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pmdc1/View/Change_Password/Change_Password_View.dart';
import 'package:pmdc1/View/Home_Screen/Widgets/Home_Card.dart';
import 'package:pmdc1/View/Home_Screen/Widgets/Student_Data.dart';
import 'package:pmdc1/View/Login%20Screen/Login_Screen_View.dart';
import 'package:pmdc1/View/Profile_Screen/Profile_Screen_View.dart';
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
            ListTile(
              leading: Icon(Icons.dashboard,
                  size: 15,
                  color: kTextWhiteColor
              ),
              minLeadingWidth: 40,
              title: Text(
                'Dashboard',
                style: Theme.of(context).textTheme.bodySmall!.copyWith(
                  fontSize: 14,
                  color: kTextWhiteColor,
                ),
              ),
              onTap: () {
                Navigator.pushNamedAndRemoveUntil(
                    context, HomeScreenView.routeName, (route) => false);
              },
            ),
            Divider(
                color: kTextWhiteColor,
                thickness: 0.5
            ),
            ListTile(
              leading: Icon(
                  Icons.key,
                  size: 15,
                  color: kTextWhiteColor
              ),
              minLeadingWidth: 40,
              title: Text(
                'Change Password',
                style: Theme.of(context).textTheme.bodySmall!.copyWith(
                  fontSize: 14,
                  color: kTextWhiteColor,
                ),
              ),
              onTap: () {
                Navigator.pushNamedAndRemoveUntil(
                    context,
                    ChangePasswordView.routeName,
                        (route) => true
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.logout,
                  size: 15,
                  color: kTextWhiteColor
              ),
              minLeadingWidth: 40,
              title: Text(
                'Sign Out',
                style: Theme.of(context).textTheme.bodySmall!.copyWith(
                  fontSize: 14,
                  color: kTextWhiteColor,
                ),
              ),
              onTap: () {
                Navigator.pushNamedAndRemoveUntil(
                    context, LoginScreenView.routesName, (route) => false);
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
            GestureDetector(
              onTap: (){
                Navigator.pushNamedAndRemoveUntil(context, ProfileScreenView.routeName,(route)=>true);
              },
              child: Container(
                height: 150,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: kPrimaryColor,
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(kDefaultPadding*2),
                    bottomLeft: Radius.circular(kDefaultPadding*2),
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
                      onTap: () {},                      child: Card(
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
                            onpress: () {},
                        ),
                        HomeCard(
                            icon: 'assets/Attendence.svg',
                            title: 'Attendence',
                          onpress: () {},
                        ),
                        HomeCard(
                            icon: 'assets/Application.svg',
                            title: 'Applications',
                            onpress: () {},
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
                          onpress: () {},
                        ),
                        HomeCard(
                          icon: 'assets/exam.svg',
                          title: 'Examination',
                          onpress: () {},
                        ),
                        HomeCard(
                          icon: 'assets/datesheet.svg',
                          title: 'DateSheet',
                          onpress: () {},
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
                          onpress: () {},
                        ),
                        HomeCard(
                          icon: 'assets/fee.svg',
                          title: 'Fee Record',
                          onpress: () {},
                        ),
                        HomeCard(
                          icon: 'assets/logout.svg',
                          title: 'Sign Out',
                          onpress: () {},
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
