import 'package:flutter/material.dart';
import 'package:pmdc1/View/Fee&Finance/Fee_Record_Screen/Widget/Custom_Button.dart';
import 'package:pmdc1/View/Fee&Finance/Fee_Record_Screen/Widget/Custom_Row.dart';
import 'package:pmdc1/View/Home_Screen/Widgets/Student_Data.dart';
import 'package:pmdc1/View/Profile_Screen/Profile_Screen_View.dart';
import 'package:pmdc1/constant.dart';

import '../../../Models/Fee_Data.dart';

class FeeScreenView extends StatefulWidget {
  static String routName = 'FeeScreenView';

  @override
  State<FeeScreenView> createState() => _FeeScreenViewState();
}

class _FeeScreenViewState extends State<FeeScreenView> {
  int totalRemaining = fee.fold(0, (sum, item) => sum + int.parse(item.remaining));

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
          style: Theme
              .of(context)
              .textTheme
              .headlineSmall!
              .copyWith(
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
                  Navigator.pushNamedAndRemoveUntil(
                      context, ProfileScreenView.routeName, (route) => true
                  );
                }
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: kPrimaryColor,
                        ),
                        height: 40,
                        width: double.infinity,
                        child:Center(
                          child: Text(
                            'Total Remaining: $totalRemaining ',
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                        )
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      ListView.builder(
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          itemCount: fee.length,
                          itemBuilder: (context, int index) {
                            return Container(
                              margin: EdgeInsets.only(
                                  bottom: 16.0
                              ),
                              child: Column(
                                children: [
                                  Container(
                                    padding: EdgeInsets.all(16.0),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.vertical(
                                          top: Radius.circular(kDefaultPadding),
                                        ),
                                        color: kTextWhiteColor,
                                        boxShadow: [
                                          BoxShadow(
                                            color: kTextLightColor,
                                            blurRadius: 2.0,
                                          )
                                        ]
                                    ),
                                    child: Column(
                                      children: [
                                        CustomRow(
                                          Title: "Month",
                                          Text1: fee[index].Month,
                                        ),
                                        SizedBox(
                                          height: 10,
                                          child: Divider(
                                            thickness: 0.9,
                                            color: kTextLightColor,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        CustomRow(
                                          Title: 'PaymenDate',
                                          Text1: fee[index].Paymentdate,
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        CustomRow(
                                          Title: 'Amount',
                                          Text1: fee[index].Amount,
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        CustomRow(
                                          Title: 'Paid',
                                          Text1: fee[index].Paid,
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        SizedBox(
                                          height: 10,
                                          child: Divider(
                                            thickness: 0.9,
                                            color: kTextLightColor,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        CustomRow(
                                          Title: 'Remaining',
                                          Text1: fee[index].remaining,
                                        ),
                                      ],
                                    ),
                                  ),
                                  CustomButton(
                                    title: fee[index].buttonStatus,
                                    icon: int.parse(fee[index].remaining) == 0
                                        ? Icon(Icons.download,
                                        color: kTextWhiteColor
                                    )
                                        : Icon(Icons.arrow_forward,
                                        color: kTextWhiteColor
                                    ),
                                    onpress: () {},
                                  )
                                ],
                              ),
                            );
                          }
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

