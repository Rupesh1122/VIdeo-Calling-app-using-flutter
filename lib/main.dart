import 'package:flutter/material.dart';
import 'package:video_call_app/pages/home_page.dart';
import 'package:video_call_app/pages/login_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        // backgroundColor: const Color(0xff282c35),
        appBar: AppBar(
          title: Text("Login"),
          backgroundColor: const Color(0xff282c35),
          elevation: 0,
        ),
        body: LoginPage(),
      ),
      routes: {
        "login": (context) => LoginPage(),
        "home": (context) => HomePage()
      },
      initialRoute: "login",
    );
  }
}
