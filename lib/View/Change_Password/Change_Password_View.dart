import 'package:flutter/material.dart';
import 'package:pmdc1/constant.dart';

class ChangePasswordView extends StatefulWidget {
  static String routeName = 'ChangePasswordView';

  @override
  State<ChangePasswordView> createState() => _ChangePasswordViewState();
}

class _ChangePasswordViewState extends State<ChangePasswordView> {
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
          'PMDC',
          style: Theme.of(context).textTheme.bodyLarge!.copyWith(
            fontSize: 20,
            color: kTextWhiteColor,
          ),
        ),

      ),
      body: Container(
        color: kOtherColor,
        child: Column(
          children: [
            Container(
              height: 150,
              width: double.infinity,
              decoration: BoxDecoration(
                color: kPrimaryColor,
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(kDefaultPadding*2),
                  bottomLeft: Radius.circular(kDefaultPadding*2),
                ),
              ),
            ),
            Text(
              'Change password',
              style: TextStyle(
                fontSize: 40,
                color: kTextBlackColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
