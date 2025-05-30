import 'package:flutter/material.dart';
import 'package:pmdc1/View/Splash_Screen/Splash_Screen_View.dart';
import 'package:pmdc1/routes.dart';
import 'package:pmdc1/themes.dart';
import 'package:sizer/sizer.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, device) {
      return MaterialApp(
        title: 'Flutter Demo',
        theme: CustomTheme().baseTheme,
        debugShowCheckedModeBanner: false,
        initialRoute: SplashScreenView.routesName,
        routes: routes,
      );
    },
    );
  }
}

