import 'package:flutter/material.dart';
import 'package:pmdc1/Components/Custom_Button2.dart';
import 'package:pmdc1/View/Application_Screen/View_Appication_Screen/View_Application.dart';
import 'package:pmdc1/View/Home_Screen/Home_Screen_View.dart';
import 'package:pmdc1/View/Home_Screen/Widgets/Student_Data.dart';
import 'package:pmdc1/View/Profile_Screen/Profile_Screen_View.dart';
import 'package:pmdc1/constant.dart';

class ApplicationView extends StatefulWidget {
  static String routeName = 'ApplicationView';

  @override
  State<ApplicationView> createState() => _ApplicationViewState();
}

class _ApplicationViewState extends State<ApplicationView> {

  final _formkey = GlobalKey<FormState>();

  String selectOption = 'Attendence';

  List<String> Options = [
    'Attendence',
    'Program Change',
    'Fee',
    'Examination',
    'Transcription',
    'Re-Totaling',
    'MakeUp Exam',
    'Other',
  ];

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
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
              fontSize: 20
            ),
          ),
        ),
        body: Container(
          color: kOtherColor,
          child: Column(
            children: [
              StudentData(
                  StudentName: 'IKROO DEV',
                  StudentRollNo:'12',
                  StudentFiled: 'Pre Engineering',
                  StudentPic: 'assets/Profile.jpeg',
                  onpress: () {
                    Navigator.pushNamedAndRemoveUntil(context, ProfileScreenView.routeName, (route) => true
                    );
                  }
              ),
              Expanded(
                  child: SingleChildScrollView(
                    child: Padding(
                        padding: EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          GestureDetector(
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: kPrimaryColor,
                              ),
                              height: 40,
                              width: double.infinity,
                              child:Center(
                                child: Text(
                                  'View Applications',
                                  style: Theme.of(context).textTheme.titleMedium,
                                ),
                              ),
                            ),
                            onTap: () {
                              Navigator.pushNamedAndRemoveUntil(context, ViewApplication.routeName, (route) => true
                              );
                            },
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 16),
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: DropdownButton<String>(
                              isExpanded: true,
                              value: selectOption,
                              dropdownColor: kTextWhiteColor,
                              iconEnabledColor: kTextBlackColor,
                              style: TextStyle(
                                color: kTextBlackColor,
                                fontSize: 16,
                              ),
                              items: Options.map((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                              onChanged: (newValue) {
                                setState(() {
                                  selectOption = newValue!;
                                });
                              },
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            padding: EdgeInsets.only(left: 16),
                            height: 50,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Icon(
                                  Icons.email,
                                  color: Colors.grey,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  'Ikroodev.x360@gmail.com',
                                  style: Theme.of(context).textTheme.titleSmall!.copyWith(
                                    color: Colors.grey,
                                    fontSize: 16,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Form(
                            key: _formkey,
                              child: buildTextFormField()),
                          SizedBox(
                            height: 30,
                          ),
                          DefaultButton(
                              onPress: () { if(_formkey.currentState!.validate()) {
                                // Navigator.pushNamedAndRemoveUntil(context, HomeScreenView.routeName, (route) => true
                                // );
                              }
                              },
                              title: "Submit",
                          ),
                        ]
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

  TextFormField buildTextFormField() {
    return TextFormField(
      minLines: 1,
      maxLines: null,
      textAlign: TextAlign.start,
      keyboardType: TextInputType.text,
      style: kInputTextStyle,
      decoration: InputDecoration(
        labelText: "Message",
        prefixIcon: Icon(
          Icons.messenger_outlined,
        ),
        prefixIconColor: kPrimaryColor,
        floatingLabelBehavior: FloatingLabelBehavior.auto,
        contentPadding: EdgeInsets.symmetric(vertical: 100)
      ),
      validator: (value) {
        if(value==null || value.isEmpty){
          return "please Write Message...";
        }
      },
    );
  }
}
