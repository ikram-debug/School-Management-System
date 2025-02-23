import 'package:flutter/material.dart';
import 'package:pmdc1/constant.dart';

class StudentData extends StatelessWidget {
final String StudentName;
final String StudentRollNo;
final String StudentFiled;
final String StudentPic;
final VoidCallback onpress;
  const StudentData({super.key,
    required this.StudentName,
    required this.StudentRollNo,
    required this.StudentFiled,
    required this.StudentPic,
    required this.onpress
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpress,
      child: Container(
        height: 150,
        width: double.infinity,
        decoration: BoxDecoration(
        color: kPrimaryColor,
        borderRadius: BorderRadius.only(
        bottomRight: Radius.circular(kDefaultPadding*2),
         bottomLeft: Radius.circular(kDefaultPadding*2),
        ),
      ),
    padding: EdgeInsets.only(top: 0,left: 10,right: 10,bottom: kDefaultPadding),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Welcome back!',
                  style: Theme.of(context).textTheme.bodySmall!.copyWith(
                    fontSize: 14,
                    color: kTextWhiteColor,
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  StudentName,
                  style: Theme.of(context).textTheme.titleMedium!.copyWith(
                    fontSize: 14,
                    color: kTextWhiteColor,
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Roll No',
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        fontSize: 14,
                        color: kTextWhiteColor,
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      StudentRollNo,
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        fontSize: 14,
                        color: kTextWhiteColor,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  StudentFiled,
                  style: Theme.of(context).textTheme.bodySmall!.copyWith(
                    fontSize: 14,
                    color: kTextWhiteColor,
                  ),
                ),
              ],
            ),
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage(StudentPic),

            ),
          ]
        ),
      ),
    );
  }
}
