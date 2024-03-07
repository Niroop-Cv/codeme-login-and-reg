import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task_app/logInPage.dart';
import 'package:task_app/name.dart';

import 'sizedBox.dart';

class Reg extends StatelessWidget {
  const Reg({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment(0, -1),
              end: Alignment(0, 1),
              colors: [
            Color(0xFFF2F2F2),
            Color(0xFFE8E8E8),
            Color(0xFFbcdcef),
          ])),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 168,
                width: double.infinity,
                decoration: const BoxDecoration(
                    color: Color(0xFF1B1645),
                    borderRadius: BorderRadius.vertical(
                      bottom: Radius.circular(15),
                    )),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 90,
                    ),
                    SvgPicture.asset("assets/codemeLogo.svg")
                  ],
                ),
              ),
              const B(x: 25),
              const Row(
                children: [
                  B(
                    x: 25,
                  ),
                  Text(
                    "Welcome Back",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
                  )
                ],
              ),
              const B(
                x: 10,
              ),
              const Row(
                children: [
                  B(x: 25),
                  Text(
                    "Please enter the detail below to continue",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                  )
                ],
              ),
              const B(x: 30),
              const Name(name: "Username"),
              const B(x: 15),
              const Name(name: "Fullname"),
              const B(x: 15),
              const Name(name: "Email Address"),
              const B(x: 15),
              const Name(name: "Password"),
              const B(x: 15),
              const Name(name: "Confirm Password"),
              const B(x: 20),
              const B(x: 15),
              Container(
                height: 50,
                width: 330,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: const Color(0xFF0E0D22)),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Register",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                    )
                  ],
                ),
              ),
              const B(x: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "I have already an account?",
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => LogIn()));
                    },
                    child: Text(
                      "Login",
                      style: TextStyle(color: Colors.blue),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
