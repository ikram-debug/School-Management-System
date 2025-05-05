import 'package:flutter/material.dart';
import 'package:pmdc1/Models/Date_Sheet_Data.dart';
import 'package:pmdc1/View/Home_Screen/Widgets/Student_Data.dart';
import 'package:pmdc1/View/Profile_Screen/Profile_Screen_View.dart';
import 'package:pmdc1/constant.dart';

class DateScheetScreenView extends StatefulWidget {
  static String routeName = 'DateScheetScreenView';

  @override
  State<DateScheetScreenView> createState() => _DateScheetScreenViewState();
}

class _DateScheetScreenViewState extends State<DateScheetScreenView> {
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
                    children: [
                      Container(
                        height: 40,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: kPrimaryColor,
                        ),
                        child: Center(
                          child: Text(
                            'Mid-Term (2021-22)',
                            style: Theme.of(context).textTheme.titleMedium!.copyWith(
                              fontSize: 16,
                              color: kTextWhiteColor,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      ListView.builder(
                        padding: EdgeInsets.symmetric(horizontal: 5,vertical: 8),
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: DateSheet.length,
                        itemBuilder: (context, int index){
                          return Card(
                            margin: EdgeInsets.only(bottom: 8),
                            color: kTextWhiteColor,
                            child:Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 16),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        DateSheet[index].Date,
                                        style: Theme.of(context).textTheme.titleMedium!.copyWith(
                                          fontSize: 16,
                                          color: kTextBlackColor,
                                        ),
                                      ),
                                      Text(
                                        DateSheet[index].Month,
                                        style: Theme.of(context).textTheme.bodySmall!.copyWith(
                                          fontSize: 10,
                                          color: kTextLightColor,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        DateSheet[index].Subject,
                                        style: Theme.of(context).textTheme.titleMedium!.copyWith(
                                          fontSize: 16,
                                          color: kTextBlackColor,
                                        ),
                                      ),
                                      Text(
                                        DateSheet[index].Day,
                                        style: Theme.of(context).textTheme.bodySmall!.copyWith(
                                          fontSize: 10,
                                          color: kTextLightColor,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Icon(
                                        Icons.watch_later_outlined,
                                        color: kTextLightColor,
                                        size: 16,
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        DateSheet[index].Time,
                                        style: Theme.of(context).textTheme.titleMedium!.copyWith(
                                          fontSize: 16,
                                          color: kTextBlackColor,
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          );
                        },
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
