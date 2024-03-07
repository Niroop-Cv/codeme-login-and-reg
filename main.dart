import 'package:flutter/material.dart';
import 'package:task_app/colorPlay.dart';
import 'package:task_app/home.dart';
import 'package:task_app/homeSTATE.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHome(),
      // home: NewClass( name: "FOOTBALL CLUB"),
      // home: ColorPlay(),
      title: "codeme",
      debugShowCheckedModeBanner: false,
    );
  }
}
