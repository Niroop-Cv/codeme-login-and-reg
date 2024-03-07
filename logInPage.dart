import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task_app/feedPage.dart';
import 'package:task_app/name.dart';
import 'package:task_app/register.dart';

import 'sizedBox.dart';

class LogIn extends StatelessWidget {
  const LogIn({super.key});

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
                height: 258,
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
              const B(x: 10),
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
                x: 25,
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
              const B(x: 30),
              const Name(name: "Password"),
              const B(x: 20),
              const Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text("Recovery Password ?"),
                  B(x: 15),
                ],
              ),
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
                      "Login",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                    )
                  ],
                ),
              ),
              const B(x: 10),
              Row(
                children: [
                  const B(x: 20),
                  Container(
                    height: 1,
                    width: 100,
                    decoration: const BoxDecoration(
                        gradient: LinearGradient(
                            colors: [Colors.black12, Colors.black])),
                  ),
                  const B(x: 5),
                  const Text(
                    "Or Continue With",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                  ),
                  const B(x: 5),
                  Container(
                    height: 1,
                    width: 100,
                    decoration: const BoxDecoration(
                        gradient: LinearGradient(
                            colors: [Colors.black, Colors.black12])),
                  ),
                ],
              ),
              const B(x: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: 60,
                    width: 75,
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.white),
                    ),
                    // child:const  Image(image:AssetImage("assets/google-logo.png")),
                    child: Image.network(
                        "https://www.freepnglogos.com/uploads/google-logo-png/google-logo-png-webinar-optimizing-for-success-google-business-webinar-13.png"),
                  ),
                  Container(
                      height: 60,
                      width: 75,
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.white),
                      ),
                      child: Image(image: AssetImage("assets/Group 3.png"))),
                  Container(
                      height: 60,
                      width: 75,
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.white),
                      ),
                      child:
                          Image(image: AssetImage("assets/facebook (1) 1.png")))
                ],
              ),
              B(x: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Not a member?",
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Reg()));
                    },
                    child: Text(
                      "Register Now",
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
