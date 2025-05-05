import 'package:flutter/material.dart';
import 'package:pmdc1/View/Home_Screen/Widgets/Student_Data.dart';
import 'package:pmdc1/View/Profile_Screen/Profile_Screen_View.dart';
import 'package:pmdc1/constant.dart';
import '../../../Models/Time_Table_Data.dart';


class TimeTableView extends StatefulWidget {
  static String routeName = 'TimeTableView ';

  @override
  State<TimeTableView> createState() => _TimeTableViewState();
}

class _TimeTableViewState extends State<TimeTableView> {

  int selectedDayIndex = 0;

  @override
  Widget build(BuildContext context) {
    String selectedDay = TimetableData.days[selectedDayIndex];
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
                  Navigator.pushNamedAndRemoveUntil(context, ProfileScreenView.routeName, (route) => true
                  );
                },
            ),
            Expanded(
                child: Padding(
                    padding: EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Container(
                        height: 50,
                        decoration: BoxDecoration(
                          color: kPrimaryColor,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Row(
                          children: List.generate(TimetableData.days.length, (index) {
                            return Expanded(
                              child: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    selectedDayIndex = index;
                                  });
                                },
                                child: Container(
                                  margin: EdgeInsets.symmetric(horizontal: 4, vertical: 8),
                                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                                  decoration: BoxDecoration(
                                    color: selectedDayIndex == index ?Colors.grey[400]: kPrimaryColor,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Center(
                                    child: Text(
                                      TimetableData.days[index],
                                      style: Theme.of(context).textTheme.titleMedium!.copyWith(
                                        color: selectedDayIndex == index ? kTextWhiteColor : kTextBlackColor,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            );
                          }),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Expanded(
                        child: ListView.builder(
                          itemCount: TimetableData.timetable[selectedDay]?.length ?? 0,
                          itemBuilder: (context, index) {
                            var period = TimetableData.timetable[selectedDay]![index];
                            return Card(
                              margin: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                              color: kTextWhiteColor,
                              child: ListTile(
                                title: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(period['subject'] ?? '',
                                      style: Theme.of(context).textTheme.titleMedium!.copyWith(
                                        fontSize: 16,
                                        color: kTextBlackColor
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Divider(
                                      thickness: 1,
                                      color: kTextBlackColor,
                                    ),
                                  ],
                                ),
                                subtitle: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Time:',
                                          style: Theme.of(context).textTheme.bodySmall!.copyWith(
                                              color: kTextLightColor,
                                              fontWeight: FontWeight.w600,
                                              fontSize:  14// mq.height * .7
                                          ),
                                        ),
                                        SizedBox(
                                          width: 40,
                                        ),
                                        Text(period['time'] ?? '',
                                          style: Theme.of(context).textTheme.titleMedium!.copyWith(
                                              color: kTextBlackColor,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 14
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Teacher:',
                                          style: Theme.of(context).textTheme.bodySmall!.copyWith(
                                              color: kTextLightColor,
                                              fontWeight: FontWeight.w600,
                                              fontSize:  14// mq.height * .7
                                          ),
                                        ),
                                        SizedBox(
                                          width: 20,
                                        ),
                                        Text(period['teacher'] ?? '',
                                          style: Theme.of(context).textTheme.titleMedium!.copyWith(
                                              color: kTextBlackColor,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 14
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Divider(
                                      thickness: 1,
                                      color: kTextBlackColor,
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(period['location'] ?? '',
                                          style: Theme.of(context).textTheme.titleMedium!.copyWith(
                                              color: kTextBlackColor,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 14
                                          ),
                                        ),
                                        Text(period['period'] ?? '',
                                          style: Theme.of(context).textTheme.titleMedium!.copyWith(
                                              color: kTextBlackColor,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 14
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                )
            ),
          ],
        ),
      ),
    );
  }
}
