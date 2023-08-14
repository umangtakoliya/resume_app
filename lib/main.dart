import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:resume_app/Screens/Build_Screen/contact_info.dart';
import 'package:resume_app/Screens/Build_Screen/references.dart';
import 'package:resume_app/Screens/build_options.dart';
import 'package:resume_app/Screens/login.dart';
import 'package:resume_app/Screens/pdf.dart';
import 'package:resume_app/Screens/splash_screen.dart';
import 'package:resume_app/utils/globals.dart';

import 'Screens/Build_Screen/achievement.dart';
import 'Screens/Build_Screen/carrier.dart';
import 'Screens/Build_Screen/declaration.dart';
import 'Screens/Build_Screen/education.dart';
import 'Screens/Build_Screen/experiences.dart';
import 'Screens/Build_Screen/interest.dart';
import 'Screens/Build_Screen/personal_detail.dart';
import 'Screens/Build_Screen/project.dart';
import 'Screens/Build_Screen/technical_skills.dart';
import 'Screens/home_page.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true, colorSchemeSeed: Globals.bgColor),
      routes: {
        '/': (context) => Splash(),
        'login': (context) => LogIn(),
        'home': (context) => HomePage(),
        'build': (context) => BuildOptions(),
        'contact_info': (context) => ContectInfo(),
        'education': (context) => Education(),
        'references': (context) => References(),
        'personl_details': (context) => PersonalDetails(),
        'carrier_obj': (context) => Carrier(),
        'projects': (context) => Projects(),
        'achievements': (context) => Achievements(),
        'technicalSkills': (context) => Technical(),
        'interest': (context) => Interest(),
        'experiences': (context) => Experiences(),
        'declaration': (context) => Declaration(),
        'pdf': (context) => Pdf(),
      },
    ),
  );
}
