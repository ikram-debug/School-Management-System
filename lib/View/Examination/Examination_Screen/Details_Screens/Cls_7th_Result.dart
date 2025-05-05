import 'package:flutter/material.dart';

import '../../../../constant.dart';

class Cls7thResult extends StatefulWidget {
  static String routeName = 'Cls7thResult';

  @override
  State<Cls7thResult> createState() => _Cls7thResultState();
}

class _Cls7thResultState extends State<Cls7thResult> {
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
