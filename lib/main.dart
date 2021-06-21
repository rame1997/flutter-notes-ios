import 'package:finalnotes/screens/about_app_screen.dart';
import 'package:finalnotes/screens/categories_screen.dart';
import 'package:finalnotes/screens/category_notes_screen.dart';
import 'package:finalnotes/screens/create_category_screen.dart';
import 'package:finalnotes/screens/create_note_screen.dart';
import 'package:finalnotes/screens/lanuch_screen.dart';
import 'package:finalnotes/screens/profile_screen.dart';
import 'package:finalnotes/screens/settings.dart';
import 'package:finalnotes/screens/signup_screen.dart';
import 'package:finalnotes/screens/singin_screen.dart';
import 'package:finalnotes/screens/update_category_screen.dart';
import 'package:finalnotes/screens/update_note_screen.dart';
import 'package:flutter/material.dart';



void main() {
  runApp(Notes());
}

class Notes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/launch':(context)=>Launch(),
        '/categories':(context)=>Categories(),
        '/singin':(context)=>SingIn(),
        '/singup':(context)=>SignUp(),
        '/categorynotes':(context)=>CategoryNotes(),
        '/settings':(context)=>Settings(),
        '/profile':(context)=>Profile(),
        '/createcategory':(context)=>CreateCategory(),
        '/createnote':(context)=>CreateNote(),
        '/aboutapp':(context)=>AboutApp(),
        '/updatecategory':(context)=>UpdateCategory(),
        '/updatenote':(context)=>UpdateNote(),

      },
      initialRoute: '/launch',
    );
  }
}
