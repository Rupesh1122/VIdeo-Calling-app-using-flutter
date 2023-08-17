import 'package:flutter/material.dart';
import 'package:video_call_app/pages/app.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff282c35),
        elevation: 0,
        title: Text("Home"),
      ),
      backgroundColor: const Color(0xff282c35),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => MyCall(callID: "1")));
          },
          child: Text("Join Call"),
        ),
      ),
    );
  }
}
