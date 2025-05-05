import 'package:flutter/material.dart';
import 'package:pmdc1/Components/Custom_Button2.dart';
import 'package:pmdc1/Components/Customt_Button1.dart';
import 'package:pmdc1/View/Forget_Password_Screen/Forgot_Password_View.dart';
import 'package:pmdc1/View/Home_Screen/Home_Screen_View.dart';
import 'package:pmdc1/constant.dart';
import 'package:sizer/sizer.dart';

late bool _passwordVisible;

class LoginScreenView extends StatefulWidget {
  static String routesName = 'LoginScreenView';
  @override
  State<LoginScreenView> createState() => _LoginScreenViewState();
}

class _LoginScreenViewState extends State<LoginScreenView> {

  final _formkey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    _passwordVisible = true;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        body: Column(
          children: [
            IntrobuildContainer(context),
            Expanded(
              child: Container(
                padding: EdgeInsets.only(top: 30,left: 30,right: 30),
                decoration: BoxDecoration(
                  color: kOtherColor,
                  borderRadius: kTopBorderRadius,
                ),
                child: Form(
                  key: _formkey,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        sizedBox,
                        buildIDTextFormField(),
                        sizedBox,
                        buildPasswordTextFormField(),
                        SizedBox(
                          height: 10,
                        ),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: CustomInkWellButton(
                            text: 'Forgot Password?',
                            onPressed:() {
                              Navigator.pushNamedAndRemoveUntil(context, ForgotPasswordView.routeName, (route) =>true);
                            },
                            fontsize: 14,
                          ),
                        ),
                        sizedBox,
                        DefaultButton(
                          onPress: () {if (_formkey.currentState!.validate()) {
                            Navigator.pushNamedAndRemoveUntil(context,
                                HomeScreenView.routeName, (route) => false);
                          }
                          },
                          title: 'Login',
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
                        )
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

  Container IntrobuildContainer(BuildContext context) {
    return Container(
            width: 100.w,
            height: 40.h,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
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
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Hi',
                      style: Theme
                          .of(context)
                          .textTheme
                          .bodySmall!
                          .copyWith(
                        fontSize: 30,
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      'Student',
                      style: Theme
                          .of(context)
                          .textTheme
                          .bodyLarge!
                          .copyWith(
                          fontSize: 30
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'Sign in to continue',
                  style: Theme
                      .of(context)
                      .textTheme
                      .titleSmall!
                      .copyWith(
                    color: kTextWhiteColor,
                    fontSize: 16,
                  ),
                )
              ],
            ),
          );
  }

  TextFormField buildPasswordTextFormField() {
    return TextFormField(
      textAlign: TextAlign.start,
      keyboardType: TextInputType.visiblePassword,
      obscureText: _passwordVisible,
      style: kInputTextStyle,
      decoration: InputDecoration(
        labelText: 'Enter Your Password',
        prefixIcon: Icon(Icons.lock),
        prefixIconColor: kPrimaryColor,
        floatingLabelBehavior: FloatingLabelBehavior.auto,
        suffixIcon: IconButton(
          onPressed: () {
            setState(() {
              _passwordVisible = !_passwordVisible;
            });
          },
          icon: Icon(
            _passwordVisible
                ? Icons.visibility_outlined
                : Icons.visibility_off_outlined,
          ),
          iconSize: kDefaultPadding,
          color: kPrimaryColor,
        ),
      ),
      validator: (value) {
        if(value == null || value.isEmpty){
          return 'Please enter your password.';
        }
      },
    );
  }

  TextFormField buildIDTextFormField() {
    return TextFormField(
      textAlign: TextAlign.start,
      keyboardType: TextInputType.number,
      style: kInputTextStyle,
      decoration: InputDecoration(
        labelText: 'Enter Your ID',
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