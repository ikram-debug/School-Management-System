import 'package:flutter/material.dart';
import 'package:pmdc1/constant.dart';

class Cls6thResult extends StatefulWidget {
  static String routeName = 'Cls6thResult';

  @override
  State<Cls6thResult> createState() => _Cls6thResultState();
}

class _Cls6thResultState extends State<Cls6thResult> {
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
          'DMC',
          style: Theme.of(context).textTheme.headlineSmall!.copyWith(
            fontSize: 20,
          ),
        ),
      ),
      body: Container(
        color: kTextWhiteColor,
        padding: EdgeInsets.all(8.0),
        child: Center(
          child: Image.asset(
            'assets/DMC.jpg'
          ),
        ),
      ),
    );
  }
}
