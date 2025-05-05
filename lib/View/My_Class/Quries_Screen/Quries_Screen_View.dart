import 'package:flutter/material.dart';
import 'package:pmdc1/Components/Customt_Button1.dart';
import 'package:pmdc1/View/Fee&Finance/Fee_Record_Screen/Widget/Custom_Button.dart';
import 'package:pmdc1/View/Home_Screen/Home_Screen_View.dart';
import 'package:pmdc1/View/Home_Screen/Widgets/Student_Data.dart';
import 'package:pmdc1/View/My_Class/Quries_Screen/View_Quries/Quries_View.dart';
import 'package:pmdc1/View/Profile_Screen/Profile_Screen_View.dart';
import 'package:pmdc1/constant.dart';

import '../../../Components/Custom_Button2.dart';

class QuriesScreenView extends StatefulWidget {
  static String routeName = 'QuriesScreenView';

  @override
  State<QuriesScreenView> createState() => _QuriesScreenViewState();
}

class _QuriesScreenViewState extends State<QuriesScreenView> {

  final _formkey = GlobalKey<FormState>();

  String selectOption = 'Select Teacher';

  List<String> options = [
    'Select Teacher',
    'Akbar Ali',
    'Madeeha Quhar',
    'Mahnaeemah Khitab',
    'Rimsha Mishal',
    'Nazir Jan',
    'Aiman',
    'Sami Ullah',
    'Mohsin Mahmood',
  ];

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
                StudentRollNo: '12',
                StudentFiled: 'Pre Engineering',
                StudentPic: 'assets/Profile.jpeg',
                onpress: () {
                  Navigator.pushNamedAndRemoveUntil(context, ProfileScreenView.routeName, (route) => true
                  );
                }
            ),
            Expanded(
              child:SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    children:[
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamedAndRemoveUntil(context, QuriesView.routeName, (route) => true
                          );
                        },
                        child: Container(
                          height: 40,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: kPrimaryColor
                          ),
                          child: Center(
                            child: Text(
                              'View Queries',
                              style:Theme.of(context).textTheme.titleMedium,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(5),
                          color: kTextWhiteColor,
                        ),
                        child: DropdownButton<String>(
                          isExpanded: true,
                            value: selectOption,
                            dropdownColor: kTextWhiteColor,
                            style: TextStyle(
                              color: kTextBlackColor,
                              fontSize: 16,
                            ),
                            items: options.map((String Value){
                              return DropdownMenuItem<String>(
                                value: Value,
                                  child: Text(Value),
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
                      Form(
                        key: _formkey,
                          child:TextFormField(
                            minLines: 1,
                            maxLines: null,
                            textAlign: TextAlign.start,
                            keyboardType: TextInputType.text,
                            style: kInputTextStyle,
                            decoration: InputDecoration(
                              prefixIcon: Icon(
                                Icons.messenger_rounded,
                              ),
                              prefixIconColor: kPrimaryColor,
                              floatingLabelBehavior: FloatingLabelBehavior.auto,
                              labelText: 'Message',
                              contentPadding: EdgeInsets.symmetric(vertical: 120),
                            ),
                            validator: (value) {
                              if(value==null || value.isEmpty){
                                return 'Please Enter Message...';
                              }
                            },
                          ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      DefaultButton(
                        onPress: () { if(_formkey.currentState!.validate()) {
                          Navigator.pushNamedAndRemoveUntil(context, HomeScreenView.routeName, (route) => true
                          );
                        }
                        },
                        title: "Submit",
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
