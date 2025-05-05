import 'package:flutter/material.dart';

import '../../../../constant.dart';

class Cls9thResult extends StatefulWidget {
  static String routeName = 'Cls9thResult';

  @override
  State<Cls9thResult> createState() => _Cls9thResultState();
}

class _Cls9thResultState extends State<Cls9thResult> {
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
