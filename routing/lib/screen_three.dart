// ignore_for_file: unused_import, prefer_const_constructors

import 'package:flutter/material.dart';
import 'Utils/routes_name.dart';

class ScreenThree extends StatefulWidget {
  const ScreenThree({super.key});

  @override
  State<ScreenThree> createState() => _ScreenThreeState();
}

class _ScreenThreeState extends State<ScreenThree> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title : Text('Screen Three'),
        centerTitle: true,
      ),
      body : Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(18.0),
          child: InkWell(
            onTap: (){
              Navigator.pop(context);
            },
            child: Center(
              child: Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.green,
                ),
                child: Center(child: Text('Screen 3')),
              ),
            ),
          ),
        )
      ],
    )
    );

  
  }
}
