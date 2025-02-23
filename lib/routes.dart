import 'package:flutter/material.dart';
import 'package:pmdc1/View/Application_Screen/Application_View.dart';
import 'package:pmdc1/View/Attendence_Screen/Attendence_View.dart';
import 'package:pmdc1/View/Change_Password_Screen/Change_Password_View.dart';
import 'package:pmdc1/View/Courses_Screen/Courses_View.dart';
import 'package:pmdc1/View/Date_Sheet_Screen/Date_Scheet_Screen_View.dart';
import 'package:pmdc1/View/Examination_Screen/Examination_View.dart';
import 'package:pmdc1/View/Forget_Password_Screen/Forgot_Password_View.dart';
import 'package:pmdc1/View/Home_Screen/Home_Screen_View.dart';
import 'package:pmdc1/View/LMS_Notification_Screen/LMS_Notification_View.dart';
import 'package:pmdc1/View/Login%20Screen/Login_Screen_View.dart';
import 'package:pmdc1/View/Profile_Screen/Profile_Screen_View.dart';
import 'package:pmdc1/View/Quries_Screen/Quries_Screen_View.dart';
import 'package:pmdc1/View/Splash_Screen/Splash_Screen_View.dart';
import 'package:pmdc1/View/Time_Table_Screen/Time_Table_View.dart';


Map<String,WidgetBuilder> routes = {
  SplashScreenView.routesName :(Context) => SplashScreenView(),
  LoginScreenView.routesName :(Context) => LoginScreenView(),
  ForgotPasswordView.routeName:(Context) => ForgotPasswordView(),
  HomeScreenView.routeName:(context) => HomeScreenView(),
  ChangePasswordView.routeName:(context) => ChangePasswordView(),
  ProfileScreenView.routeName:(context) => ProfileScreenView(),
  LmsNotificationView.routeName:(context) => LmsNotificationView(),
  CoursesView.routeName:(context) => CoursesView(),
  TimeTableView.routeName:(context) => TimeTableView(),
  AttendenceView.routeName:(context) =>AttendenceView(),
  ApplicationView.routeName:(context) => ApplicationView(),
  ExaminationView.routeName:(context) => ExaminationView(),
  DateScheetScreenView.routeName:(context) => DateScheetScreenView(),
  QuriesScreenView.routeName:(context) => QuriesScreenView(),
  QuriesScreenView.routeName:(context) => QuriesScreenView(),
};
