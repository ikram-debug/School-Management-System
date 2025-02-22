import 'package:flutter/material.dart';
import 'package:pmdc1/Components/Custom_Button2.dart';
import 'package:pmdc1/Components/Customt_Button1.dart';
import 'package:pmdc1/View/Home_Screen/Home_Screen_View.dart';
import 'package:pmdc1/View/Home_Screen/Widgets/Student_Data.dart';
import 'package:pmdc1/View/Profile_Screen/Profile_Screen_View.dart';
import 'package:pmdc1/constant.dart';

class ChangePasswordView extends StatefulWidget {
  static String routeName = 'ChangePasswordView';

  @override
  State<ChangePasswordView> createState() => _ChangePasswordViewState();
}

class _ChangePasswordViewState extends State<ChangePasswordView> {

  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: FocusManager.instance.primaryFocus?.unfocus,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: kPrimaryColor,
          centerTitle: true,
          iconTheme: IconThemeData(
            color: kTextWhiteColor,
          ),
          title: Text(
            'PMDC',
            style: Theme.of(context).textTheme.headlineSmall!.copyWith(
              fontSize: 20,
              color: kTextWhiteColor,
            ),
          ),

        ),
        body: Container(
          color: kOtherColor,
          child: Column(
            children: [
              StudentData(
                StudentName: 'IKROO DEV',
                StudentRollNo: '12',
                StudentFiled: 'Pre Engineering',
                StudentPic: 'assets/Profile.jpeg',
                onpress: () {
                  Navigator.pushNamedAndRemoveUntil(
                    context,
                    ProfileScreenView.routeName,
                        (route) => true,
                  );
                },
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.only(top: 30, left: 30, right: 30),
                    child: Form(
                      key: _formkey,
                      child: Column(
                        children: [
                          sizedBox,
                          buildCurrentTextFormField(),
                          SizedBox(
                              height: 30
                          ),
                          buildNewTextFormField(),
                          SizedBox(
                              height: 200
                          ),
                          DefaultButton(
                            onPress: () {
                              if (_formkey.currentState!.validate()) {
                                Navigator.pushNamedAndRemoveUntil(
                                  context,
                                  HomeScreenView.routeName,
                                      (route) => false,
                                );
                              }
                            },
                            title: 'Change Password',
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),

      ),
    );
  }

  TextFormField buildCurrentTextFormField() {
    return TextFormField(
      textAlign: TextAlign.start,
      keyboardType: TextInputType.text,
      style: kInputTextStyle,
      decoration: InputDecoration(
        labelText: 'Enter your current password',
        prefixIcon: Icon(
          Icons.lock,
          color: kPrimaryColor,
        ),
        floatingLabelBehavior: FloatingLabelBehavior.auto,
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'please enter your current password';
        }
      },
    );
  }
}


TextFormField buildNewTextFormField() {
  return TextFormField(
    textAlign: TextAlign.start,
    keyboardType: TextInputType.text,
    style: kInputTextStyle,
    decoration: InputDecoration(
      labelText: 'Enter your New password',
      prefixIcon: Icon(
        Icons.lock,
        color: kPrimaryColor,
      ),
      floatingLabelBehavior: FloatingLabelBehavior.auto,
    ),
    validator: (value) {
      if (value == null || value.isEmpty) {
        return 'please enter your new password';
      }
    },
  );
}

