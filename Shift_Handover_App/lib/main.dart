import 'package:flutter/material.dart';
import 'package:namer_app/pages/HomePage.dart';
import 'package:namer_app/pages/NewTask.dart';
import 'package:namer_app/pages/login_screen.dart';
import 'package:namer_app/pages/TaskPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: Colors.white),
      routes: {
        "/": (context) => LoginScreen(),
        "homePage": (context) => HomePage(),
        "taskPage": (context) => TaskPage(),
        "newTask": (context) => NewTask(),
      },
    );
  }
}
