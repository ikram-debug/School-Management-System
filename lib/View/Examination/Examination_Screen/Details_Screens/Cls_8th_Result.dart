import 'package:flutter/material.dart';

import '../../../../constant.dart';

class Cls8thResult extends StatefulWidget {
  static String routeName = 'Cls8thResult';

  @override
  State<Cls8thResult> createState() => _Cls8thResultState();
}

class _Cls8thResultState extends State<Cls8thResult> {
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
