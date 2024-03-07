import 'package:flutter/material.dart';

class B extends StatelessWidget {
  const B({super.key,required this.x});
final double x;

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: x,
      width: x,
    );
  }
}