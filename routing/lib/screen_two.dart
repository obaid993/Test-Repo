// ignore_for_file: unused_import, use_key_in_widget_constructors, must_be_immutable, prefer_const_constructors

import 'package:flutter/material.dart';
import '../Utils/routes_name.dart';

class ScreenTwo extends StatefulWidget {
  dynamic data;
  ScreenTwo({
    required this.data,
  });

  @override
  State<ScreenTwo> createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.data!['Flutter']),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: InkWell(
              onTap: () {
                Navigator.pushNamed(context, RoutesName.screenThree);
              },
              child: Center(
                child: Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.green,
                  ),
                  child: Center(child: Text('Screen 2')),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
