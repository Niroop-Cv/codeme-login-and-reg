import 'package:flutter/material.dart';

import 'sizedBox.dart';

class Name extends StatelessWidget {
  const Name({super.key,required this.name});
final String name;
  @override
  Widget build(BuildContext context) {
    return 
     Container(
                height: 50,
                width: 330,
                decoration: BoxDecoration(color: Colors.white,
                  borderRadius: BorderRadius.circular(15)
                ),
                child: Row(
                  children: [
                    B(x: 25),
                    Container(
                      height: 50,
                      width: 250,
                      child: TextFormField(
                      decoration: InputDecoration(
                        hintText: name,border: InputBorder.none
                      ),
                                        ),
                    ),
                  ]
                ),
              );
    
  }
}