import 'package:flutter/material.dart';
import 'package:pmdc1/View/Application_Screen/Application_View.dart';
import 'package:pmdc1/View/Change_Password_Screen/Change_Password_View.dart';
import 'package:pmdc1/View/Forget_Password_Screen/Forgot_Password_View.dart';
import 'package:pmdc1/View/Home_Screen/Home_Screen_View.dart';
import 'package:pmdc1/View/Login%20Screen/Login_Screen_View.dart';
import 'package:pmdc1/View/Profile_Screen/Profile_Screen_View.dart';
import 'package:pmdc1/View/Splash_Screen/Splash_Screen_View.dart';
import 'View/Application_Screen/View_Appication_Screen/View_Application.dart';
import 'View/Examination/Date_Sheet_Screen/Date_Scheet_Screen_View.dart';
import 'View/Examination/Examination_Screen/Details_Screens/Cls_6th_Result.dart';
import 'View/Examination/Examination_Screen/Details_Screens/Cls_7th_Result.dart';
import 'View/Examination/Examination_Screen/Details_Screens/Cls_8th_Result.dart';
import 'View/Examination/Examination_Screen/Details_Screens/Cls_9th_Result.dart';
import 'View/Examination/Examination_Screen/Examination_View.dart';
import 'View/Examination/UMF_Notice_Screen/UFM_Notice_View.dart';
import 'View/Fee&Finance/Fee_Record_Screen/Fee_Screen_View.dart';
import 'View/Fee&Finance/Fee_Schedule_Screen/Fee_Schedule_View.dart';
import 'View/Fee&Finance/Semetar_Registration_Screen/Semestart_Registration_View.dart';
import 'View/Forms/Student_Affidavit/Student_Affidavit_View.dart';
import 'View/My_Class/Attendence_Screen/Attendence_View.dart';
import 'View/My_Class/Courses_Screen/Courses_View.dart';
import 'View/My_Class/Quries_Screen/Quries_Screen_View.dart';
import 'View/My_Class/Quries_Screen/View_Quries/Quries_View.dart';
import 'View/My_Class/Time_Table_Screen/Time_Table_View.dart';
import 'View/Notifications/LMS_Notification_Screen/LMS_Notification_View.dart';
import 'View/Notifications/SMS_Notification_Screen/SMS_Notification_View.dart';
import 'View/Student_HandBook_Screen/Student_HandBook_View.dart';



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
  FeeScreenView.routName:(context) => FeeScreenView(),
  SmsNotificationView.routeName:(context) => SmsNotificationView(),
  StudentHandbookView.routeName:(context) => StudentHandbookView(),
  FeeScheduleView.routeName:(context) => FeeScheduleView(),
  SemestartRegistrationView.routeName:(context) => SemestartRegistrationView(),
  StudentAffidavitView.routeName:(context) => StudentAffidavitView(),
  UfmNoticeView.routeName:(context) => UfmNoticeView(),
  ViewApplication.routeName:(context) => ViewApplication(),
  QuriesView.routeName:(context) => QuriesView(),
  Cls6thResult.routeName:(context) => Cls6thResult(),
  Cls7thResult.routeName:(context) => Cls7thResult(),
  Cls8thResult.routeName:(context) => Cls8thResult(),
  Cls9thResult.routeName:(contetx) => Cls9thResult(),
};
