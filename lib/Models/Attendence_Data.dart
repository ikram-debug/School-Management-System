import 'package:flutter/material.dart';

class AttendanceDatabase {
  static List<String> years = [
    '2021-22',
    '2022-23',
    '2023-24',
    '2024-25',
  ];

  static Map<String, List<Map<String, String>>> attendance = {
    '2021': [
      {
        'subject': 'Physics',
        'courseId': 'PHY101',
        'attendance': '92%',
        'absentClasses': '2',
        'totalClasses': '30',
      },
      {
        'subject': 'Chemistry',
        'courseId': 'CHE101',
        'attendance': '89%',
        'absentClasses': '3',
        'totalClasses': '31',
      },
      {
        'subject': 'Biology',
        'courseId': 'BIO101',
        'attendance': '90%',
        'absentClasses': '3',
        'totalClasses': '29',
      },
      {
        'subject': 'Statistics',
        'courseId': 'STAT101',
        'attendance': '88%',
        'absentClasses': '4',
        'totalClasses': '32',
      },
      {
        'subject': 'Economics',
        'courseId': 'ECO101',
        'attendance': '91%',
        'absentClasses': '2',
        'totalClasses': '30',
      },
    ],
    '2022': [
      {
        'subject': 'Philosophy',
        'courseId': 'PHI102',
        'attendance': '90%',
        'absentClasses': '3',
        'totalClasses': '30',
      },
      {
        'subject': 'Political Science',
        'courseId': 'POL102',
        'attendance': '87%',
        'absentClasses': '4',
        'totalClasses': '32',
      },
      {
        'subject': 'Sociology',
        'courseId': 'SOC102',
        'attendance': '89%',
        'absentClasses': '3',
        'totalClasses': '31',
      },
      {
        'subject': 'Psychology',
        'courseId': 'PSY102',
        'attendance': '92%',
        'absentClasses': '2',
        'totalClasses': '30',
      },
      {
        'subject': 'Environmental Science',
        'courseId': 'ENV102',
        'attendance': '88%',
        'absentClasses': '3',
        'totalClasses': '29',
      },
    ],
    '2023': [
      {
        'subject': 'Media Studies',
        'courseId': 'MED103',
        'attendance': '91%',
        'absentClasses': '2',
        'totalClasses': '31',
      },
      {
        'subject': 'Anthropology',
        'courseId': 'ANT103',
        'attendance': '86%',
        'absentClasses': '5',
        'totalClasses': '34',
      },
      {
        'subject': 'International Relations',
        'courseId': 'IR103',
        'attendance': '89%',
        'absentClasses': '3',
        'totalClasses': '32',
      },
      {
        'subject': 'Public Administration',
        'courseId': 'PA103',
        'attendance': '93%',
        'absentClasses': '1',
        'totalClasses': '29',
      },
      {
        'subject': 'Gender Studies',
        'courseId': 'GS103',
        'attendance': '88%',
        'absentClasses': '4',
        'totalClasses': '33',
      },
    ],
    '2024': [
      {
        'subject': 'Law',
        'courseId': 'LAW104',
        'attendance': '89%',
        'absentClasses': '3',
        'totalClasses': '30',
      },
      {
        'subject': 'Business Administration',
        'courseId': 'BBA104',
        'attendance': '87%',
        'absentClasses': '4',
        'totalClasses': '32',
      },
      {
        'subject': 'Fine Arts',
        'courseId': 'ART104',
        'attendance': '90%',
        'absentClasses': '2',
        'totalClasses': '29',
      },
      {
        'subject': 'Music',
        'courseId': 'MUS104',
        'attendance': '85%',
        'absentClasses': '5',
        'totalClasses': '34',
      },
      {
        'subject': 'History',
        'courseId': 'HIS104',
        'attendance': '88%',
        'absentClasses': '3',
        'totalClasses': '30',
      },
    ],
  };

}
