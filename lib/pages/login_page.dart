import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  static String name = "", username = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff282c35),
      body: Padding(
        padding: const EdgeInsets.only(left: 8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              onChanged: (value) {
                name = value;
              },
              style: const TextStyle(
                color: Colors.white,
              ),
              decoration: const InputDecoration(
                  hintText: "Name",
                  hintStyle: TextStyle(
                    color: Colors.white,
                  ),
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue))),
            ),
            const SizedBox(
              height: 14,
            ),
            TextField(
              onChanged: (value) {
                username = value;
              },
              style: const TextStyle(
                color: Colors.white,
              ),
              decoration: const InputDecoration(
                  hintText: "Username",
                  hintStyle: TextStyle(
                    color: Colors.white,
                  ),
                  border: OutlineInputBorder()),
            ),
            const SizedBox(
              height: 29,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, "home");
                },
                child: const Text("LOGIN"))
          ],
        ),
      ),
    );
  }
}
