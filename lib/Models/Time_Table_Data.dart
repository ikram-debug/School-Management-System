import 'package:flutter/material.dart';

class TimetableData {
  static List<String> days = [
    'Mon',
    'Tue',
    'Wed',
    'Thu',
    'Fri',
    'Sat',
  ];

  static Map<String, List<Map<String, String>>> timetable = {
    'Mon': [
      {
        'subject': 'Islamiyat',
        'time': '08:15am - 09:00am',
        'teacher': 'Amal Khan',
        'period': 'Period1',
        'location': 'Room 05'
      },
      {
        'subject': 'Urdu',
        'time': '09:00am - 09:45am',
        'teacher': 'Mumtaz Ullah',
        'period': 'Period2',
        'location': 'Room 05'
      },
      {
        'subject': 'English',
        'time': '09:45am - 10:30am',
        'teacher': 'Zuman Ahman',
        'period': 'Period3',
        'location': 'Room 05'
      },
      {
        'subject': 'Computer Science',
        'time': '10:30am - 11:15am',
        'teacher': 'Muhammad Hayat',
        'period': 'Period4',
        'location': 'Room 05'
      },
      {
        'subject': 'Arabic',
        'time': '11:15am - 12:00pm',
        'teacher': 'Nazir Jan',
        'period': 'Period5',
        'location': 'Room 05'
      },
      {
        'subject': 'General Science',
        'time': '12:00pm - 12:45pm',
        'teacher': 'Rizwan Ullah',
        'period': 'Period6',
        'location': 'Room 05'
      },
      {
        'subject': 'Maths',
        'time': '01:00pm - 01:45pm',
        'teacher': 'Sami Khan',
        'period': 'Period7',
        'location': 'Room 05'
      },
    ],
    'Tue': [
      {
        'subject': 'Urdu',
        'time': '08:15am - 09:00am',
        'teacher': 'Mumtaz Ullah',
        'period': 'Period1',
        'location': 'Room 05'
      },
      {
        'subject': 'English',
        'time': '09:00am - 09:45am',
        'teacher': 'Zuman Ahman',
        'period': 'Period2',
        'location': 'Room 05'
      },
      {
        'subject': 'Computer Science',
        'time': '09:45am - 10:30am',
        'teacher': 'Muhammad Hayat',
        'period': 'Period3',
        'location': 'Room 05'
      },
      {
        'subject': 'Arabic',
        'time': '10:30am - 11:15am',
        'teacher': 'Nazir Jan',
        'period': 'Period4',
        'location': 'Room 05'
      },
      {
        'subject': 'General Science',
        'time': '11:15am - 12:00pm',
        'teacher': 'Rizwan Ullah',
        'period': 'Period5',
        'location': 'Room 05'
      },
      {
        'subject': 'Pak Study',
        'time': '12:00pm - 12:45pm',
        'teacher': 'Nawab Khan',
        'period': 'Period6',
        'location': 'Room 05'
      },
      {
        'subject': 'Maths',
        'time': '01:00pm - 01:45pm',
        'teacher': 'Sami Khan',
        'period': 'Period7',
        'location': 'Room 05'
      },
    ],
    'Wed': [
      {
        'subject': 'Islamiyat',
        'time': '08:15am - 09:00am',
        'teacher': 'Amal Khan',
        'period': 'Period1',
        'location': 'Room 05'
      },
      {
        'subject': 'English',
        'time': '09:00am - 09:45am',
        'teacher': 'Zuman Ahman',
        'period': 'Period2',
        'location': 'Room 05'
      },
      {
        'subject': 'Computer Science',
        'time': '09:45am - 10:30am',
        'teacher': 'Muhammad Hayat',
        'period': 'Period3',
        'location': 'Room 05'
      },
      {
        'subject': 'Arabic',
        'time': '10:30am - 11:15am',
        'teacher': 'Nazir Jan',
        'period': 'Period4',
        'location': 'Room 05'
      },
      {
        'subject': 'General Science',
        'time': '11:15am - 12:00pm',
        'teacher': 'Rizwan Ullah',
        'period': 'Period5',
        'location': 'Room 05'
      },
      {
        'subject': 'Pak Study',
        'time': '12:00pm - 12:45pm',
        'teacher': 'Nawab Khan',
        'period': 'Period6',
        'location': 'Room 05'
      },
      {
        'subject': 'Maths',
        'time': '01:00pm - 01:45pm',
        'teacher': 'Sami Khan',
        'period': 'Period7',
        'location': 'Room 05'
      },
    ],
    'Thu': [
      {
        'subject': 'Islamiyat',
        'time': '08:15am - 09:00am',
        'teacher': 'Amal Khan',
        'period': 'Period1',
        'location': 'Room 05'
      },
      {
        'subject': 'Urdu',
        'time': '09:00am - 09:45am',
        'teacher': 'Mumtaz Ullah',
        'period': 'Period2',
        'location': 'Room 05'
      },
      {
        'subject': 'Computer Science',
        'time': '09:45am - 10:30am',
        'teacher': 'Muhammad Hayat',
        'period': 'Period3',
        'location': 'Room 05'
      },
      {
        'subject': 'Arabic',
        'time': '10:30am - 11:15am',
        'teacher': 'Nazir Jan',
        'period': 'Period4',
        'location': 'Room 05'
      },
      {
        'subject': 'General Science',
        'time': '11:15am - 12:00pm',
        'teacher': 'Rizwan Ullah',
        'period': 'Period5',
        'location': 'Room 05'
      },
      {
        'subject': 'Pak Study',
        'time': '12:00pm - 12:45pm',
        'teacher': 'Nawab Khan',
        'period': 'Period6',
        'location': 'Room 05'
      },
      {
        'subject': 'Maths',
        'time': '01:00pm - 01:45pm',
        'teacher': 'Sami Khan',
        'period': 'Period7',
        'location': 'Room 05'
      },
    ],
    'Fri': [
      {
        'subject': 'Islamiyat',
        'time': '08:15am - 09:00am',
        'teacher': 'Amal Khan',
        'period': 'Period1',
        'location': 'Room 05'
      },
      {
        'subject': 'Urdu',
        'time': '09:00am - 09:45am',
        'teacher': 'Mumtaz Ullah',
        'period': 'Period2',
        'location': 'Room 05'
      },
      {
        'subject': 'English',
        'time': '09:45am - 10:30am',
        'teacher': 'Zuman Ahman',
        'period': 'Period3',
        'location': 'Room 05'
      },
      {
        'subject': 'Computer Science',
        'time': '10:30am - 11:15am',
        'teacher': 'Muhammad Hayat',
        'period': 'Period4',
        'location': 'Room 05'
      },
      {
        'subject': 'Arabic',
        'time': '11:15am - 12:00pm',
        'teacher': 'Nazir Jan',
        'period': 'Period5',
        'location': 'Room 05'
      },
    ],
    'Sat': [
      {
        'subject': 'English',
        'time': '08:15am - 09:00am',
        'teacher': 'Zuman Ahman',
        'period': 'Period1',
        'location': 'Room 05'
      },
      {
        'subject': 'Islamiyat',
        'time': '09:00am - 09:45am',
        'teacher': 'Amal Khan',
        'period': 'Period2',
        'location': 'Room 05'
      },
      {
        'subject': 'Computer Science',
        'time': '09:45am - 10:30am',
        'teacher': 'Muhammad Hayat',
        'period': 'Period3',
        'location': 'Room 05'
      },
      {
        'subject': 'General Science',
        'time': '10:30am - 11:15am',
        'teacher': 'Rizwan Ullah',
        'period': 'Period4',
        'location': 'Room 05'
      },
      {
        'subject': 'Pak Study',
        'time': '11:15am - 12:00pm',
        'teacher': 'Nawab Khan',
        'period': 'Period5',
        'location': 'Room 05'
      },
      {
        'subject': 'Arabic',
        'time': '12:00pm - 12:45pm',
        'teacher': 'Nazir Jan',
        'period': 'Period6',
        'location': 'Room 05'
      },
      {
        'subject': 'Maths',
        'time': '01:00pm - 01:45pm',
        'teacher': 'Sami Khan',
        'period': 'Period7',
        'location': 'Room 05'
      },
    ],
  };
}
