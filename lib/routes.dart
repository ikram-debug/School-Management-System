import 'package:flutter/material.dart';
import 'package:pmdc1/View/Change_Password/Change_Password_View.dart';
import 'package:pmdc1/View/Courses/Courses_View.dart';
import 'package:pmdc1/View/Forget_Password_Screen/Forgot_Password_View.dart';
import 'package:pmdc1/View/Home_Screen/Home_Screen_View.dart';
import 'package:pmdc1/View/LMS_Notification/LMS_Notification_View.dart';
import 'package:pmdc1/View/Login%20Screen/Login_Screen_View.dart';
import 'package:pmdc1/View/Profile_Screen/Profile_Screen_View.dart';
import 'package:pmdc1/View/Splash_Screen/Splash_Screen_View.dart';


Map<String,WidgetBuilder> routes = {
  SplashScreenView.routesName :(Context) => SplashScreenView(),
  LoginScreenView.routesName :(Context) => LoginScreenView(),
  ForgotPasswordView.routeName:(Context) => ForgotPasswordView(),
  HomeScreenView.routeName:(context) => HomeScreenView(),
  ChangePasswordView.routeName:(context) => ChangePasswordView(),
  ProfileScreenView.routeName:(context) => ProfileScreenView(),
  LmsNotificationView.routeName:(context) => LmsNotificationView(),
  CoursesView.routeName:(context) => CoursesView(),
};