import 'package:flutter/material.dart';
import 'package:pmdc1/Models/Attendence_Data.dart';
import 'package:pmdc1/View/Home_Screen/Widgets/Student_Data.dart';
import 'package:pmdc1/View/My_Class/Attendence_Screen/Widget/Custom_Row1.dart';
import 'package:pmdc1/View/Profile_Screen/Profile_Screen_View.dart';
import 'package:pmdc1/constant.dart';

class AttendenceView extends StatefulWidget {
  static String routeName = 'AttendenceView ';
  @override
  State<AttendenceView> createState() => _ApplicationViewState();
}

class _ApplicationViewState extends State<AttendenceView> {

  String selectedYear = AttendanceDatabase.years.first;

  String getYearKey(String selectedYear){
    return selectedYear.split('-').first;
  }

  @override
  Widget build(BuildContext context) {
    List<Map<String, String>> subjects = AttendanceDatabase.attendance[getYearKey(selectedYear)] ?? [];
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
                          padding: EdgeInsets.symmetric(horizontal: 16),
                          height: 60,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: kPrimaryColor,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Sessions:',
                                style: Theme.of(context).textTheme.titleMedium!.copyWith(
                                  fontSize: 16,
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Container(
                                padding: EdgeInsets.symmetric(horizontal: 16,vertical: 8),
                                height: 40,
                                width: 150,
                                decoration: BoxDecoration(
                                  color: kTextWhiteColor
                                ),
                                child: DropdownButton<String>(
                                  value: selectedYear,
                                  isExpanded: true,
                                  dropdownColor: kTextWhiteColor,
                                  iconEnabledColor: kTextBlackColor,
                                  style: Theme.of(context).textTheme.titleMedium!.copyWith(
                                    fontSize: 16,
                                    color: kTextBlackColor,
                                  ),
                                  onChanged: (value){
                                    setState(() {
                                      selectedYear=value!;
                                    });
                                  },
                                  items: AttendanceDatabase.years.map((year){
                                    return DropdownMenuItem(
                                      value: year,
                                        child: Text(year),
                                    );
                                  }).toList(),
                              ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        ListView.builder(
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          itemCount: subjects.length,
                          itemBuilder: (context,index){
                            final Subject = subjects[index];
                            return Card(
                              color: kTextWhiteColor,
                              margin: EdgeInsets.symmetric(horizontal: 2,vertical: 8),
                              child: ListTile(
                                title: Text(
                                  Subject['subject'] ?? '',
                                  style: Theme.of(context).textTheme.titleMedium!.copyWith(
                                    fontSize: 16,
                                    color: kTextBlackColor
                                  ),
                                ),
                                subtitle: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Divider(
                                      thickness: 0.9,
                                      color: kTextBlackColor,
                                    ),
                                    CustomRow1(
                                        label: 'CourseId:',
                                        value: Subject['courseId'] ?? '',
                                    ),
                                    CustomRow1(
                                      label: 'TotalClasses:',
                                      value: Subject['totalClasses'] ?? '',
                                    ),
                                    CustomRow1(
                                      label: 'AbsentClasses:',
                                      value: Subject['absentClasses'] ?? '',
                                    ),
                                    Divider(
                                      thickness: 0.9,
                                      color: kTextBlackColor,
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Container(
                                      padding: EdgeInsets.symmetric(horizontal: 6),
                                      height: 30,
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        gradient: LinearGradient(colors: [kPrimaryColor,kTextBlackColor,kSecondaryColor]
                                        ),
                                      ),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            'Attendance:',
                                            style: Theme.of(context).textTheme.bodySmall!.copyWith(
                                              fontSize: 16,
                                              color: kTextWhiteColor,
                                            ),
                                          ),
                                          Text(
                                            Subject['attendance'] ?? '',
                                            style: Theme.of(context).textTheme.titleMedium!.copyWith(
                                              fontSize: 16,
                                              color: kTextWhiteColor,
                                            ),
                                          )
                                        ],
                                      ),
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
