import 'package:flutter/material.dart';

class AttendanceDatabase {
  static List<String> years = [
    '2021-22',
    '2022-23',
    '2023-24',
  ];

  final Map<String, List<Map<String, dynamic>>> yearsData = {
    "2021-22": [
      {
        "subjectId": "MATH101",
        "title": "Mathematics",
        "teacherEmail": "teacher.math@example.com",
        "studentSection": "A",
        "teacherName": "Dr. John Doe",
        "courseOutline": {
          "courseObjectives": [
            "Understand advanced algebra concepts.",
            "Apply calculus techniques to solve problems.",
            "Interpret statistical data.",
            "Prove geometric theorems."
          ],
          "suggestedBooks": [
            "Advanced Engineering Mathematics by Erwin Kreyszig"
          ],
          "referenceBooks": [
            "Calculus by James Stewart",
            "Linear Algebra by Gilbert Strang"
          ],
          "webSources": [
            "www.khanacademy.org",
            "www.coursera.org"
          ],
          "classPolicy": "Attendance is mandatory. Assignments must be submitted on time.",
          "gradingPolicy": "Midterm 30%, Final Exam 40%, Assignments 30%"
        },
        "lectures": [
          {
            "weekNo": 1,
            "topicName": "Algebra Basics",
            "present": true,
            "status": "Delivered"
          },
          {
            "weekNo": 2,
            "topicName": "Calculus Derivatives",
            "present": true,
            "status": "Delivered"
          },
          {
            "weekNo": 3,
            "topicName": "Statistics Mean & Median",
            "present": false,
            "status": "Not Delivered"
          },
          {
            "weekNo": 4,
            "topicName": "Geometry Theorems",
            "present": false,
            "status": "Not Delivered"
          }
        ],
        "assignments": [
          {
            "topicName": "Algebra Assignment",
            "question": "Solve advanced algebra problems.",
            "allowFile": "Yes",
            "dateAdded": "2021-09-01",
            "deadline": "2021-09-10",
            "status": "Uploaded"
          },
          {
            "topicName": "Calculus Assignment",
            "question": "Complete calculus problem sets.",
            "allowFile": "Yes",
            "dateAdded": "2021-09-11",
            "deadline": "2021-09-20",
            "status": "Uploaded"
          },
          {
            "topicName": "Statistics Assignment",
            "question": "Analyze data and create graphs.",
            "allowFile": "No",
            "dateAdded": "2021-09-21",
            "deadline": "2021-09-30",
            "status": "Not Uploaded"
          },
          {
            "topicName": "Geometry Assignment",
            "question": "Solve geometric proofs and problems.",
            "allowFile": "Yes",
            "dateAdded": "2021-10-01",
            "deadline": "2021-10-10",
            "status": "Uploaded"
          }
        ],
        "classTiming": {
          "days": ["Monday", "Wednesday", "Friday"],
          "time": "9:00 AM - 10:00 AM"
        },
        "announcements": [
          {
            "topic": "Math Quiz",
            "message": "Quiz will be conducted next Monday.",
            "date": "2021-09-05"
          },
          {
            "topic": "Assignment Submission",
            "message": "Submit Assignment by Friday.",
            "date": "2021-09-07"
          },
          {
            "topic": "Guest Lecture",
            "message": "Guest lecture on Algebra scheduled.",
            "date": "2021-09-10"
          }
        ],
        "assessments": {
          "midtermMarks": 30,
          "finalExamMarks": 40,
          "assignmentMarks": 30
        }
      },
      {
        "subjectId": "PHY101",
        "title": "Physics",
        "teacherEmail": "teacher.physics@example.com",
        "studentSection": "A",
        "teacherName": "Prof. Sarah Lee",
        "courseOutline": {
          "courseObjectives": [
            "Understand fundamental physics laws.",
            "Apply Newton's laws in daily life scenarios.",
            "Learn electricity and magnetism basics."
          ],
          "suggestedBooks": [
            "Fundamentals of Physics by Halliday, Resnick, and Walker"
          ],
          "referenceBooks": [
            "Concepts of Physics by H.C. Verma"
          ],
          "webSources": [
            "www.physicsclassroom.com",
            "www.hyperphysics.phy-astr.gsu.edu"
          ],
          "classPolicy": "Lab attendance compulsory. No late submissions.",
          "gradingPolicy": "Midterm 25%, Final 45%, Assignments 30%"
        },
        "lectures": [
          {
            "weekNo": 1,
            "topicName": "Laws of Motion",
            "present": true,
            "status": "Delivered"
          },
          {
            "weekNo": 2,
            "topicName": "Work and Energy",
            "present": true,
            "status": "Delivered"
          },
          {
            "weekNo": 3,
            "topicName": "Electricity Basics",
            "present": false,
            "status": "Not Delivered"
          },
          {
            "weekNo": 4,
            "topicName": "Magnetism Concepts",
            "present": false,
            "status": "Not Delivered"
          }
        ],
        "assignments": [
          {
            "topicName": "Newton's Laws Assignment",
            "question": "Explain Newton's three laws with examples.",
            "allowFile": "Yes",
            "dateAdded": "2021-09-03",
            "deadline": "2021-09-12",
            "status": "Uploaded"
          },
          {
            "topicName": "Energy Problems",
            "question": "Solve problems related to energy conservation.",
            "allowFile": "Yes",
            "dateAdded": "2021-09-13",
            "deadline": "2021-09-22",
            "status": "Uploaded"
          },
          {
            "topicName": "Electric Circuits",
            "question": "Draw and explain basic electric circuits.",
            "allowFile": "No",
            "dateAdded": "2021-09-23",
            "deadline": "2021-10-02",
            "status": "Not Uploaded"
          },
          {
            "topicName": "Magnetic Fields",
            "question": "Describe magnetic field lines.",
            "allowFile": "Yes",
            "dateAdded": "2021-10-03",
            "deadline": "2021-10-12",
            "status": "Uploaded"
          }
        ],
        "classTiming": {
          "days": ["Tuesday", "Thursday"],
          "time": "10:00 AM - 11:30 AM"
        },
        "announcements": [
          {
            "topic": "Lab Equipment",
            "message": "Bring lab coats for practicals.",
            "date": "2021-09-06"
          },
          {
            "topic": "Assignment Reminder",
            "message": "Submit Work and Energy assignment.",
            "date": "2021-09-14"
          }
        ],
        "assessments": {
          "midtermMarks": 25,
          "finalExamMarks": 45,
          "assignmentMarks": 30
        }
      },
      {
        "subjectId": "CHEM101",
        "title": "Chemistry",
        "teacherEmail": "teacher.chemistry@example.com",
        "studentSection": "B",
        "teacherName": "Dr. Emma Watson",
        "courseOutline": {
          "courseObjectives": [
            "Understand chemical reactions.",
            "Study periodic table and element properties.",
            "Learn basics of organic chemistry."
          ],
          "suggestedBooks": [
            "Chemistry: The Central Science by Brown, LeMay"
          ],
          "referenceBooks": [
            "Organic Chemistry by Morrison and Boyd"
          ],
          "webSources": [
            "www.chemguide.co.uk",
            "www.khanacademy.org/chemistry"
          ],
          "classPolicy": "Safety in lab is must. Assignments are compulsory.",
          "gradingPolicy": "Midterm 30%, Final 40%, Assignments 30%"
        },
        "lectures": [
          {
            "weekNo": 1,
            "topicName": "Introduction to Chemistry",
            "present": true,
            "status": "Delivered"
          },
          {
            "weekNo": 2,
            "topicName": "Periodic Table Overview",
            "present": true,
            "status": "Delivered"
          },
          {
            "weekNo": 3,
            "topicName": "Chemical Bonding",
            "present": false,
            "status": "Not Delivered"
          },
          {
            "weekNo": 4,
            "topicName": "Organic Compounds",
            "present": false,
            "status": "Not Delivered"
          }
        ],
        "assignments": [
          {
            "topicName": "Atomic Structure",
            "question": "Describe structure of an atom.",
            "allowFile": "Yes",
            "dateAdded": "2021-09-05",
            "deadline": "2021-09-15",
            "status": "Uploaded"
          },
          {
            "topicName": "Chemical Reactions",
            "question": "Explain types of chemical reactions.",
            "allowFile": "Yes",
            "dateAdded": "2021-09-16",
            "deadline": "2021-09-25",
            "status": "Uploaded"
          },
          {
            "topicName": "Periodic Properties",
            "question": "Study trends in periodic table.",
            "allowFile": "No",
            "dateAdded": "2021-09-26",
            "deadline": "2021-10-05",
            "status": "Not Uploaded"
          },
          {
            "topicName": "Organic Molecules",
            "question": "List basic organic molecules.",
            "allowFile": "Yes",
            "dateAdded": "2021-10-06",
            "deadline": "2021-10-15",
            "status": "Uploaded"
          }
        ],
        "classTiming": {
          "days": ["Monday", "Wednesday"],
          "time": "11:00 AM - 12:30 PM"
        },
        "announcements": [
          {
            "topic": "Lab Safety",
            "message": "Mandatory safety gear for labs.",
            "date": "2021-09-07"
          }
        ],
        "assessments": {
          "midtermMarks": 30,
          "finalExamMarks": 40,
          "assignmentMarks": 30,
        }
      }
    ],
    "2022-23": [
      {
        "subjectId": "CS101",
        "title": "Introduction to Computer Science",
        "teacherEmail": "teacher.cs@example.com",
        "studentSection": "B",
        "teacherName": "Dr. Alan Turing",
        "courseOutline": {
          "courseObjectives": [
            "Understand basics of computer systems.",
            "Learn programming fundamentals.",
            "Study software development process."
          ],
          "suggestedBooks": [
            "Introduction to Computing by David Evans"
          ],
          "referenceBooks": [
            "Computer Science: An Overview by J. Glenn Brookshear"
          ],
          "webSources": [
            "www.geeksforgeeks.org",
            "www.udemy.com"
          ],
          "classPolicy": "Regular attendance and project submissions are mandatory.",
          "gradingPolicy": "Midterm 30%, Final Exam 40%, Assignments 30%"
        },
        "lectures": [
          {
            "weekNo": 1,
            "topicName": "Introduction to Computers",
            "present": true,
            "status": "Delivered"
          },
          {
            "weekNo": 2,
            "topicName": "Programming Basics",
            "present": true,
            "status": "Delivered"
          },
          {
            "weekNo": 3,
            "topicName": "Software Development Life Cycle",
            "present": false,
            "status": "Not Delivered"
          },
          {
            "weekNo": 4,
            "topicName": "Algorithms and Flowcharts",
            "present": false,
            "status": "Not Delivered"
          }
        ],
        "assignments": [
          {
            "topicName": "Basics of Computers",
            "question": "Explain different parts of a computer system.",
            "allowFile": "Yes",
            "dateAdded": "2022-09-01",
            "deadline": "2022-09-10",
            "status": "Uploaded"
          },
          {
            "topicName": "Programming Assignment",
            "question": "Write a simple C++ program.",
            "allowFile": "Yes",
            "dateAdded": "2022-09-11",
            "deadline": "2022-09-20",
            "status": "Uploaded"
          },
          {
            "topicName": "SDLC Assignment",
            "question": "Explain different phases of SDLC.",
            "allowFile": "No",
            "dateAdded": "2022-09-21",
            "deadline": "2022-09-30",
            "status": "Not Uploaded"
          },
          {
            "topicName": "Algorithm Assignment",
            "question": "Design a simple algorithm for addition.",
            "allowFile": "Yes",
            "dateAdded": "2022-10-01",
            "deadline": "2022-10-10",
            "status": "Uploaded"
          }
        ],
        "classTiming": {
          "days": ["Monday", "Wednesday"],
          "time": "8:00 AM - 9:30 AM"
        },
        "announcements": [
          {
            "topic": "Programming Quiz",
            "message": "Quiz on basic programming next week.",
            "date": "2022-09-05"
          }
        ],
        "assessments": {
          "midtermMarks": 30,
          "finalExamMarks": 40,
          "assignmentMarks": 30
        }
      },
      {
        "subjectId": "ENG101",
        "title": "English Composition",
        "teacherEmail": "teacher.english@example.com",
        "studentSection": "A",
        "teacherName": "Prof. Emily Bronte",
        "courseOutline": {
          "courseObjectives": [
            "Improve writing and grammar skills.",
            "Develop essay writing techniques.",
            "Learn formal communication."
          ],
          "suggestedBooks": [
            "English Grammar in Use by Raymond Murphy"
          ],
          "referenceBooks": [
            "Practical English Usage by Michael Swan"
          ],
          "webSources": [
            "www.grammarly.com",
            "www.coursera.org"
          ],
          "classPolicy": "Participation in class activities is essential.",
          "gradingPolicy": "Midterm 25%, Final Exam 50%, Assignments 25%"
        },
        "lectures": [
          {
            "weekNo": 1,
            "topicName": "Parts of Speech",
            "present": true,
            "status": "Delivered"
          },
          {
            "weekNo": 2,
            "topicName": "Sentence Structures",
            "present": true,
            "status": "Delivered"
          },
          {
            "weekNo": 3,
            "topicName": "Essay Writing",
            "present": false,
            "status": "Not Delivered"
          },
          {
            "weekNo": 4,
            "topicName": "Formal Letters",
            "present": false,
            "status": "Not Delivered"
          }
        ],
        "assignments": [
          {
            "topicName": "Grammar Practice",
            "question": "Complete grammar exercises.",
            "allowFile": "Yes",
            "dateAdded": "2022-09-03",
            "deadline": "2022-09-12",
            "status": "Uploaded"
          },
          {
            "topicName": "Essay on Environment",
            "question": "Write an essay about climate change.",
            "allowFile": "Yes",
            "dateAdded": "2022-09-13",
            "deadline": "2022-09-22",
            "status": "Uploaded"
          },
          {
            "topicName": "Formal Letter",
            "question": "Write a letter to the editor.",
            "allowFile": "No",
            "dateAdded": "2022-09-23",
            "deadline": "2022-10-02",
            "status": "Not Uploaded"
          },
          {
            "topicName": "Report Writing",
            "question": "Draft a short report on an event.",
            "allowFile": "Yes",
            "dateAdded": "2022-10-03",
            "deadline": "2022-10-12",
            "status": "Uploaded"
          }
        ],
        "classTiming": {
          "days": ["Tuesday", "Thursday"],
          "time": "9:00 AM - 10:30 AM"
        },
        "announcements": [
          {
            "topic": "Grammar Test",
            "message": "Grammar test on Thursday.",
            "date": "2022-09-06"
          }
        ],
        "assessments": {
          "midtermMarks": 25,
          "finalExamMarks": 50,
          "assignmentMarks": 25
        }
      },
      {
        "subjectId": "BIO101",
        "title": "Biology Basics",
        "teacherEmail": "teacher.bio@example.com",
        "studentSection": "C",
        "teacherName": "Dr. Charles Darwin",
        "courseOutline": {
          "courseObjectives": [
            "Understand cell structure and function.",
            "Learn human anatomy basics.",
            "Study ecosystems and biodiversity."
          ],
          "suggestedBooks": [
            "Campbell Biology by Reece et al."
          ],
          "referenceBooks": [
            "Biology by Sylvia S. Mader"
          ],
          "webSources": [
            "www.khanacademy.org/science/biology",
            "www.biologyonline.com"
          ],
          "classPolicy": "Attendance mandatory for lab sessions.",
          "gradingPolicy": "Midterm 30%, Final Exam 40%, Assignments 30%"
        },
        "lectures": [
          {
            "weekNo": 1,
            "topicName": "Introduction to Cells",
            "present": true,
            "status": "Delivered"
          },
          {
            "weekNo": 2,
            "topicName": "Human Organ Systems",
            "present": true,
            "status": "Delivered"
          },
          {
            "weekNo": 3,
            "topicName": "Ecosystem Overview",
            "present": false,
            "status": "Not Delivered"
          },
          {
            "weekNo": 4,
            "topicName": "Biodiversity Importance",
            "present": false,
            "status": "Not Delivered"
          }
        ],
        "assignments": [
          {
            "topicName": "Cell Diagram",
            "question": "Draw and label a cell.",
            "allowFile": "Yes",
            "dateAdded": "2022-09-05",
            "deadline": "2022-09-15",
            "status": "Uploaded"
          },
          {
            "topicName": "Organ Systems",
            "question": "Explain human organ systems.",
            "allowFile": "Yes",
            "dateAdded": "2022-09-16",
            "deadline": "2022-09-25",
            "status": "Uploaded"
          },
          {
            "topicName": "Ecosystem Project",
            "question": "Create a model of an ecosystem.",
            "allowFile": "No",
            "dateAdded": "2022-09-26",
            "deadline": "2022-10-05",
            "status": "Not Uploaded"
          },
          {
            "topicName": "Biodiversity Report",
            "question": "Report on local biodiversity.",
            "allowFile": "Yes",
            "dateAdded": "2022-10-06",
            "deadline": "2022-10-15",
            "status": "Uploaded"
          }
        ],
        "classTiming": {
          "days": ["Wednesday", "Friday"],
          "time": "11:00 AM - 12:30 PM"
        },
        "announcements": [
          {
            "topic": "Lab Safety",
            "message": "Wear lab coats for lab sessions.",
            "date": "2022-09-07"
          }
        ],
        "assessments": {
          "midtermMarks": 30,
          "finalExamMarks": 40,
          "assignmentMarks": 30
        }
      }
    ],
    "2023-24": [
      {
        "subjectId": "ENG201",
        "title": "English Literature",
        "teacherEmail": "teacher.english@example.com",
        "studentSection": "A",
        "teacherName": "Ms. Olivia Brown",
        "courseOutline": {
          "courseObjectives": [
            "Analyze classic and modern literature.",
            "Enhance critical reading and writing skills.",
            "Understand literary theories."
          ],
          "suggestedBooks": [
            "The Norton Anthology of English Literature"
          ],
          "referenceBooks": [
            "Literary Theory: An Introduction by Terry Eagleton"
          ],
          "webSources": [
            "www.sparknotes.com",
            "www.litcharts.com"
          ],
          "classPolicy": "Attendance is mandatory. Late submissions will be penalized.",
          "gradingPolicy": "Midterm 30%, Final Exam 50%, Assignments 20%"
        },
        "lectures": [
          {
            "weekNo": 1,
            "topicName": "Introduction to Literature",
            "present": true,
            "status": "Delivered"
          },
          {
            "weekNo": 2,
            "topicName": "Poetry Analysis",
            "present": true,
            "status": "Delivered"
          },
          {
            "weekNo": 3,
            "topicName": "Drama and Plays",
            "present": false,
            "status": "Not Delivered"
          },
          {
            "weekNo": 4,
            "topicName": "Modern Novels",
            "present": false,
            "status": "Not Delivered"
          }
        ],
        "assignments": [
          {
            "topicName": "Poetry Essay",
            "question": "Analyze a poem of your choice.",
            "allowFile": "Yes",
            "dateAdded": "2023-09-01",
            "deadline": "2023-09-10",
            "status": "Uploaded"
          },
          {
            "topicName": "Drama Assignment",
            "question": "Review a famous play.",
            "allowFile": "Yes",
            "dateAdded": "2023-09-11",
            "deadline": "2023-09-20",
            "status": "Uploaded"
          },
          {
            "topicName": "Novel Review",
            "question": "Write a review of a modern novel.",
            "allowFile": "No",
            "dateAdded": "2023-09-21",
            "deadline": "2023-09-30",
            "status": "Not Uploaded"
          }
        ],
        "classTiming": {
          "days": ["Tuesday", "Thursday"],
          "time": "9:30 AM - 11:00 AM"
        },
        "announcements": [
          {
            "topic": "Essay Competition",
            "message": "Participate in English essay competition.",
            "date": "2023-09-05"
          }
        ],
        "assessments": {
          "midtermMarks": 30,
          "finalExamMarks": 50,
          "assignmentMarks": 20
        }
      },
      {
        "subjectId": "BIO201",
        "title": "Biology",
        "teacherEmail": "teacher.biology@example.com",
        "studentSection": "B",
        "teacherName": "Dr. Liam Smith",
        "courseOutline": {
          "courseObjectives": [
            "Understand cell structure and functions.",
            "Study genetics and evolution.",
            "Learn basics of human anatomy."
          ],
          "suggestedBooks": [
            "Biology by Campbell and Reece"
          ],
          "referenceBooks": [
            "Molecular Biology of the Cell by Alberts"
          ],
          "webSources": [
            "www.biologyonline.com",
            "www.khanacademy.org/biology"
          ],
          "classPolicy": "Lab attendance compulsory. Practical exams included.",
          "gradingPolicy": "Midterm 25%, Final 50%, Assignments 25%"
        },
        "lectures": [
          {
            "weekNo": 1,
            "topicName": "Introduction to Biology",
            "present": true,
            "status": "Delivered"
          },
          {
            "weekNo": 2,
            "topicName": "Cell Biology",
            "present": true,
            "status": "Delivered"
          },
          {
            "weekNo": 3,
            "topicName": "Genetics Basics",
            "present": false,
            "status": "Not Delivered"
          },
          {
            "weekNo": 4,
            "topicName": "Human Anatomy",
            "present": false,
            "status": "Not Delivered"
          }
        ],
        "assignments": [
          {
            "topicName": "Cell Diagram",
            "question": "Draw and label an animal and plant cell.",
            "allowFile": "Yes",
            "dateAdded": "2023-09-03",
            "deadline": "2023-09-12",
            "status": "Uploaded"
          },
          {
            "topicName": "Genetics Worksheet",
            "question": "Solve genetics problems.",
            "allowFile": "Yes",
            "dateAdded": "2023-09-13",
            "deadline": "2023-09-22",
            "status": "Uploaded"
          }
        ],
        "classTiming": {
          "days": ["Monday", "Wednesday"],
          "time": "11:30 AM - 1:00 PM"
        },
        "announcements": [
          {
            "topic": "Lab Safety",
            "message": "Lab coats are mandatory from next week.",
            "date": "2023-09-06"
          }
        ],
        "assessments": {
          "midtermMarks": 25,
          "finalExamMarks": 50,
          "assignmentMarks": 25
        }
      },
      {
        "subjectId": "CS201",
        "title": "Computer Science",
        "teacherEmail": "teacher.cs@example.com",
        "studentSection": "A",
        "teacherName": "Mr. Noah Johnson",
        "courseOutline": {
          "courseObjectives": [
            "Learn programming fundamentals.",
            "Understand algorithms and data structures.",
            "Develop problem-solving skills."
          ],
          "suggestedBooks": [
            "Introduction to Algorithms by Cormen"
          ],
          "referenceBooks": [
            "Clean Code by Robert C. Martin"
          ],
          "webSources": [
            "www.geeksforgeeks.org",
            "www.hackerrank.com"
          ],
          "classPolicy": "100% attendance required for labs.",
          "gradingPolicy": "Midterm 30%, Final 40%, Assignments 30%"
        },
        "lectures": [
          {
            "weekNo": 1,
            "topicName": "Introduction to Programming",
            "present": true,
            "status": "Delivered"
          },
          {
            "weekNo": 2,
            "topicName": "Control Structures",
            "present": true,
            "status": "Delivered"
          },
          {
            "weekNo": 3,
            "topicName": "Functions and Recursion",
            "present": false,
            "status": "Not Delivered"
          },
          {
            "weekNo": 4,
            "topicName": "Arrays and Lists",
            "present": false,
            "status": "Not Delivered"
          }
        ],
        "assignments": [
          {
            "topicName": "Programming Basics",
            "question": "Write basic programs using loops and conditions.",
            "allowFile": "Yes",
            "dateAdded": "2023-09-04",
            "deadline": "2023-09-13",
            "status": "Uploaded"
          },
          {
            "topicName": "Recursive Functions",
            "question": "Implement recursion examples.",
            "allowFile": "Yes",
            "dateAdded": "2023-09-14",
            "deadline": "2023-09-23",
            "status": "Uploaded"
          }
        ],
        "classTiming": {
          "days": ["Friday"],
          "time": "2:00 PM - 5:00 PM"
        },
        "announcements": [
          {
            "topic": "Coding Competition",
            "message": "Sign up for inter-university coding competition.",
            "date": "2023-09-07"
          }
        ],
        "assessments": {
          "midtermMarks": 30,
          "finalExamMarks": 40,
          "assignmentMarks": 30
        }
      }
    ],
  };
}
