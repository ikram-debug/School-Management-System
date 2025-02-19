import 'package:flutter/material.dart';
import 'package:pmdc1/Components/Custom_Button2.dart';
import 'package:pmdc1/Components/Customt_Button1.dart';
import 'package:pmdc1/View/Login%20Screen/Login_Screen_View.dart';
import 'package:pmdc1/constant.dart';
import 'package:sizer/sizer.dart';

class ForgotPasswordView extends StatefulWidget {
  static String routeName = 'ForgotPasswordView';

  @override
  State<ForgotPasswordView> createState() => _ForgotPasswordViewState();
}

class _ForgotPasswordViewState extends State<ForgotPasswordView> {

  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        body: Column(
          children: [
            Container(
              height: 40.h,
              width: 100.w,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    child: Image.asset(
                      'assets/Logo.png',
                      color: kTextWhiteColor,
                    ),
                    height: 150,
                    width: 150,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Forgot',
                        style: Theme.of(context).textTheme.bodySmall!.copyWith(
                          fontSize: 20,
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        'Password?',
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    "Don't worry, let's get you back in.",
                    style: Theme.of(context).textTheme.titleSmall?.copyWith(
                      fontSize: 12,
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.only(top: 30,left: 30,right: 30),
                decoration: BoxDecoration(
                  color: kTextWhiteColor,
                  borderRadius: kTopBorderRadius,
                ),
                child: Form(
                    key: _formkey,
                    child:SingleChildScrollView(
                      child: Column(
                        children: [
                          sizedBox,
                          buildIDTextFormField(),
                          sizedBox,
                          DefaultButton(onPress: () {},
                              title: 'Send Password',
                          ),
                          sizedBox,
                          Align(
                            alignment: Alignment.bottomRight,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  'Rememberd Password',
                                  style: Theme.of(context).textTheme.bodySmall!.copyWith(
                                    fontSize: 12,
                                    color: kTextBlackColor,
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                CustomInkWellButton(
                                    text: 'Login?',
                                    onPressed: () {
                                      Navigator.pushNamedAndRemoveUntil(context, LoginScreenView.routesName, (route)=>false
                                      );
                                    },
                                  fontsize: 12,
                                ),
                              ],
                            ),
                          ),
                          sizedBox,
                          Align(
                              alignment: Alignment.bottomLeft,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'For any query email us at',
                                    style: Theme.of(context).textTheme.bodySmall!.copyWith(
                                      fontSize: 12,
                                      color: kPrimaryColor,
                                    ),
                                  ),
                                  Text(
                                    'info@pmdc.edu.pk ',
                                    style: Theme.of(context).textTheme.bodySmall!.copyWith(
                                      fontSize: 12,
                                      color: kTextBlackColor,
                                    ),
                                  ),
                                ],
                              )
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
    );
  }

  TextFormField buildIDTextFormField() {
    return TextFormField(
      textAlign: TextAlign.start,
      keyboardType: TextInputType.number,
      style: kInputTextStyle,
      decoration: InputDecoration(
        labelText: 'Enter Your ID', // Typo fixed
        prefixIcon: Icon(Icons.person),
        prefixIconColor: kPrimaryColor,
        floatingLabelBehavior: FloatingLabelBehavior.auto,
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Enter ID';
        }
        else if (!RegExp(r'^[0-9]+$').hasMatch(value)) {
          return 'Only numbers are allowed';
        }
        return null;
      },
    );
  }
}
