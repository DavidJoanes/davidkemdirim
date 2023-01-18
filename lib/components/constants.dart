// ignore_for_file: constant_identifier_names, non_constant_identifier_names, prefer_const_constructors
import 'package:flutter/material.dart';

String? CurrentPage;
var test_list = [
  [
    "assets/images/projects/pstc/1.png",
    "assets/images/projects/pstc/2.png",
    "assets/images/projects/pstc/3.png",
    "assets/images/projects/pstc/4.png",
    "assets/images/projects/pstc/5.png",
    "assets/images/projects/pstc/6.png",
  ],
  [
    "assets/images/projects/jogenicsHMS/1.png",
    "assets/images/projects/jogenicsHMS/2.png",
    "assets/images/projects/jogenicsHMS/3.png",
    "assets/images/projects/jogenicsHMS/4.png",
    "assets/images/projects/jogenicsHMS/5.png",
    "assets/images/projects/jogenicsHMS/6.png",
  ],
  [
    "assets/images/projects/powercore/1.png",
    "assets/images/projects/powercore/2.png",
    "assets/images/projects/powercore/3.png",
    // "assets/images/projects/powercore/4.png",
    // "assets/images/projects/powercore/5.png",
  ],
  [
    "assets/images/projects/sar/1.png",
    "assets/images/projects/sar/2.png",
    "assets/images/projects/sar/3.png",
    "assets/images/projects/sar/4.png",
    "assets/images/projects/sar/5.png",
  ],
];

class Constants {
  //Main page
  static const String LOGO = "DK";
  static const String APP_TITLE = "David Kemdirim Portfolio";
  static const String NAME = "DAVID KEMDIRIM";
  late String NAME2 = "DAVID KEMDIRIM";
  static const String NAME3 = "DAVID KEMDIRIM";
  static const String EMAIL = "david.kemdirim@yahoo.com";
  static const String SITE_URL = "https://davidkemdirim.web.app";
  static const String ARIMA = "Arima";
  static const String POPPINS = "Poppins";
  static const String ROBOTO = "Roboto";

  //Home page
  static const String HOME = "Home";
  static const String ABOUT = "About";
  static const String CONTACT = "Contact";
  static const String CERTIFICATIONS = "Certifications";
  static const String EMAIL_VALUE = "david.kemdirim@yahoo.com";
  static const String HEADING1 = "THIS IS ME";
  static const String SUBHEADING1 = "Software Developer";
  static const String SUBHEADING2 =
      "Welcome to my cubicle. Soon enough you'll get to discover the ";
  static const String SUBHEADING3 = "REAL ";
  static const String SUBHEADING4 = "me.. lol";

  //About page
  static const String ABOUTME = "ABOUT ME";
  static const String ABOUTME_SHORT =
      "Hi! I'm David Joanes Kemdirim, an enthusiastic software developer based in Nigeria. I derive delight in building high-end software applications that provides solutions to various problems across different industries. I am an avid listener and a problem solver.";
  static const String ABOUTME_FULL =
      "Hi! I'm David Joanes Kemdirim, an enthusiastic software developer based in Nigeria. I derive delight in building high-end software applications that provides solutions to various problems across different industries.\nI'm a graduate of Electrical/Electronic Engineering from the University of Port Harcourt, Nigeria.\nI'm currently open to new opportunities outside my comfort zone. I am an avid listener and a problem solver. I'm an introvert who loves travelling and sports. I'm also a big fan of wild life documentaries.";
  static const String ABOUTME_BRIEF =
      "Honestly, I like to see myselft as 'Jack of all trade, master of some, LOL..";
  static const String ABOUTME_SECTION1 = "A brief history about myself";
  static const String ABOUTME_SECTION1_TEXT = '''
My name is David Joanes Kemdirim. I prefer to be known as a Software developer rather than a Data Analyst, an IT Administrator, Web developer, nor a Graphic designer. This is because I derive immeasurable joy in building software that assist clients or users in handling their regular activities efficiently, swiftly and most importantly, conviniently.\nI'm a graduate of Electrical/Electronic Engineering from the University of Port Harcourt, Nigeria. (Graduation year - 2021). I have 2+ years of working experience.\n
My journey into tech started with a brief internship at Huawei Technologies, Shenzhen, China. After which I proceeded in working with Huawei as a Certified ICT Instructor, and an Ambassador to my School, at the Centre for Information and telecommunication Engineering (UniPort) where I trained and assited over 50 people (personally) and over 300 people (collectively with my colleagues) in getting certifications in various tech fields withing a period of 18 months.\n
I initially began programming with Python, of which I have over 3 years experience. I decided to transition to Flutter when I realized that Software development (Mobile and Desktop applications), isn't one of the core strengths of Python programming language. However, it hasn't hindered from carrying out porjects related to Python such as Data Analysis and Machine Learning (ML).\n
I'm currently open to new opportunities, so feel free to reach out to me, let's work together.
      ''';
  static const String ABOUTME_SECTION2 = "What I make use of";
  static const String ABOUTME_SECTION2_TEXT =
      "I make use of quiet a number of tools or technology in order to breathe life into any software I develop. Ofcourse, such tools depends greatly on the nature of the software and the problem it aims to solve. Listed below are the tools which I'm comfortable working with.";
  static const List ABOUTME_SECTION2_TECHNOLOGIES = [
    'Python',
    'Flask',
    'Tkinter',
    'Dart',
    'Flutter',
    'MongoDb',
    'Firebase',
    'SQL',
    'HTML 5',
    'BootStrap 5',
    'CSS3',
    'Adobe Tools (XD, Photoshop, Illustrator)',
  ];
  static const String ABOUTME_SECTION2_QUOTE =
      "Only a life lived for others is a life worthwhile";
  static const String ABOUTME_SECTION2_QUOTE_AUTHOR = "-  Albert Einstein";

  //Services page
  static const String SERVICES = "My Services";
  static const String SERVICES1 = "Software Development";
  static const String SERVICES1b =
      "I design, build and deploy high-end bespoke Desktop and Mobile applications that offers users value and an intriguing experience.";
  static const String SERVICES2 = "Huawei Certified ICT Associate Courses";
  static const String SERVICES2b =
      "I am a certified Huawei ICT Instructor, and the led instructor at one of Huawei's prestigious Academies in Nigeria. I instruct people on some of Huawei's proffession ICT courses, such as: HCIA-R&S, HCIA-Datacom and HCIA-Storage.";
  static const String SERVICES3 = "Data Analytics";
  static const String SERVICES3b =
      "I clean, prepocess and analyze data for individuals and organizations, with the sole aim of drawing meaningful conclusion from existing trends in the data and predicting future occurances.";
  static const String SERVICES4 = "Graphic Design";
  static const String SERVICES4b =
      "I design and create unique graphic designs for individuals and organizations.";

  //Projects page
  static const String PROJECTS = "My Latest Projects";
  static const String PROJECT1 = "JOGENICS HMS";
  static const String PROJECT2 = "POWERCORE";
  static const String PROJECT3 = "SMART ATTENDANCE REGISTER";
  static const List PROJECTS_DESCRIPTION = [
    '''
PSTC is a proposed web application for Plateau State Tourism Corporation, that aims to assist them in managing the activities of Hotels in Plateau state, Nigeria.
    ''',
    '''
Jogenics Hotel Management System is a high-end desktop application that runs on Windows operating system. It was built to assist owners, managers and staff of hotels efficiently perform their individual jobs in ensuring the smooth running of the hotel.\n
It provides priviledges to the owners of hotel to accurately monitor the activities of thier employees in real-time, analyze and obtain daily, monthly and yearly income of the hotel without the need for a third party software. On the other hand, it assits the emplyees (Bartenders and Receptionists) to efficiently carry out sales and check-in/out guests respectively.\n
It is evident to note that, although the price of this software starts at \$300, you will be required to subscribe monthly to any package in order to gain access to the analysis tab as well as ensure you're running on a quality database (T&C apply). 
  ''',
    '''
Powercore is the official software of Acecore Incorporation. It is used to efficiently regulate and analyze power consumption of a home that uses Acecore's Powercell as it's source of energy.\nI'm not obliged to say more due to the fact that I am under contract with Acecore Inc.
  ''',
    '''
Smart Attendance register is a software that assists colleges and institution of learning in efficiently recording or registering daily attendance of students and staff via facial recognition.\n
This was basically one of the mini projects I carried out during my 500 level in college.
  ''',
  ];
  static const List PROJECTS_GITHUBLINK = [
    "https://pstc.netlify.app",
    "https://github.com/DavidJoanes/jogenics",
    "https://acecore.tech",
    "https://github.com/DavidJoanes/",
    "",
  ];
  static const List ABOUT_PROJECTS = [
    "",
    "Difference between Basic Package and Standard Package",
    "For more information, visit",
    "",
    "",
    "",
  ];
  static const List PROJECTS_DESCRIPTION2 = [
    '''
  ''',
    '''
- Basic package increase the size of the database for your hotel to a fair extent, which can probably last between 1-2 years.\n
- Standard package offers you an unlimited database and also gives you access to the Analysis Tab where you can easily verify your daily, monthly and yearly income to enable you balance your books.\n\n
The cost of this software is \$300(plus monthly subscription). If you are interested in purchasing it, endeavour to contact me ASAP.
  ''',
    '''
www.acecore.tech
  ''',
    '''
  ''',
    '''
  ''',
  ];

  //Certifications page
  static const String CERTIFICATIONS_HEADING = "CERTIFICATIONS";
  static List CERTIFICATES = ["ai.png", "storage.png" "datacom.png"];

  //Contact page
  static const String CONTACT_HEADING = "Get in touch.";
  static const String CONTACT_TEXT =
      "Hey there! Please, if you've got any project or job offer for me, feel free to contact me through any means outlined below.";
  static List SOCIAL_MEDIA_PAGES = [
    "https://github.com/DavidJoanes",
    "https://www.linkedin.com/in/david-kemdirim-019813155",
    "https://twitter.com/call_me_joanes?t=7X8c-T6wpg2YkpuSLs28vQ&s=09",
  ];

  //Footer
  static const String FOOTER = "Get In Touch";
  static const String FOOTER_TEXT1 = "Let's work together.";
  static const String FOOTER_TEXT2 = "2022 Built by David Kemdirim";
  static const String FOOTER_TEXT3 = "Contact me";

  //Colors
  static var PRIMARY_COLOR = Color.fromARGB(255, 58, 113, 90);
  static var SECONDARY_COLOR = Color.fromARGB(255, 88, 219, 94);
  static var SECONDARY_COLOR2 = Colors.blueGrey;
  static var TRANSPARENT_COLOR = Colors.transparent;
  static var WHITE_COLOR = Colors.white;
  static var OFF_WHITE_COLOR = Color.fromARGB(255, 213, 213, 213);
  static var TRANSPARENT_WHITE_COLOR = Color.fromARGB(112, 255, 255, 255);
  static var BLACK_COLOR = Colors.black;
  static var BLACK_COLOR2 = Colors.black87;
  static var RED_COLOR = Colors.red;
  static var GREY_COLOR = Colors.grey;
  static var LINKEDIN_LOGO_COLOR = Color.fromARGB(255, 0, 114, 177);
  static var TWITTER_LOGO_COLOR = Color.fromARGB(255, 29, 161, 242);
}
