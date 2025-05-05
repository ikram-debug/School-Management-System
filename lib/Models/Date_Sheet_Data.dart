import 'package:flutter/material.dart';

class DateSheetDtaa {
  final String Date;
  final String Month;
  final String Subject;
  final String Day;
  final String Time;

  DateSheetDtaa(
      this.Date,
      this.Month,
      this.Subject,
      this.Day,
      this.Time,
      );
}

List<DateSheetDtaa> DateSheet = [
  DateSheetDtaa('11', 'May', 'Computer Science', 'Monday', '9-11AM'),
  DateSheetDtaa('12', 'May', 'Urdu', 'Tuesday', '9-11AM'),
  DateSheetDtaa('13', 'May', 'English', 'Wednesday', '9-11AM'),
  DateSheetDtaa('14', 'May', 'Mathematics', 'Thursday', '9-11AM'),
  DateSheetDtaa('15', 'May', 'Physics', 'Friday', '9-11AM'),
  DateSheetDtaa('16', 'May', 'Chemistry', 'Saturday', '9-11AM'),
  DateSheetDtaa('18', 'May', 'Biology', 'Monday', '9-11AM'),
  DateSheetDtaa('19', 'May', 'Islamic Studies', 'Tuesday', '9-11AM'),
];
