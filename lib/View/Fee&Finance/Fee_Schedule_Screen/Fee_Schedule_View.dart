import 'package:flutter/material.dart';
import 'package:pmdc1/View/Home_Screen/Widgets/Student_Data.dart';
import 'package:pmdc1/View/Profile_Screen/Profile_Screen_View.dart';
import 'package:pmdc1/constant.dart';

class FeeScheduleView extends StatefulWidget {
  static String routeName = 'FeeScheduleView';

  @override
  State<FeeScheduleView> createState() => _FeeScheduleViewState();
}

class _FeeScheduleViewState extends State<FeeScheduleView> {
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
          'File',
          style: Theme.of(context).textTheme.headlineSmall!.copyWith(
            fontSize: 20,
          ),
        ),
      ),
      body: Container(
        color: kTextWhiteColor,
        child: Center(
          child: SizedBox(
            height: 500,
            width: double.infinity,
            child: Image.asset('assets/Fee_Schedule.jpeg'),
          ),
        ),
      ),
    );
  }
}
