import 'package:e_learning/page_screen/page_inbox_chat.dart';
import 'package:e_learning/page_screen/page_mycourse_ongoing_lessons.dart';
import 'package:e_learning/page_screen/page_profile.dart';
import 'package:e_learning/page_screen/page_transaction.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    // Create a MaterialColor with white as its primary color
    MaterialColor whiteMaterialColor = MaterialColor(0xFFFFFFFF, {
      50: Colors.white,
      100: Colors.white,
      200: Colors.white,
      300: Colors.white,
      400: Colors.white,
      500: Colors.white,
      600: Colors.white,
      700: Colors.white,
      800: Colors.white,
      900: Colors.white,
    });

    return MaterialApp(
      title: 'E-Learning UI',

      initialRoute: '/home', // Set the initial route to the inbox page
      routes: {
        '/home': (context) => PageMyCourseOngoingLessons(),
        '/my_courses': (context) => CoursesPageContent(),
        '/inbox': (context) => PageInboxChat(),
        '/transaction': (context) => PageTransaction(),
        '/profile': (context) => PageProfile(),
      },

      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(primarySwatch: whiteMaterialColor), // Set seed color to white
        useMaterial3: true,
        fontFamily: GoogleFonts.jost().fontFamily,
        scaffoldBackgroundColor: const Color(0xFFF5F9FF), // Set background color
      ),
      // home: const PageMyCourseOngoingLessons(),
      debugShowCheckedModeBanner: false,
    );
  }
}


