// ignore_for_file: unused_import, prefer_const_constructors

import 'package:flutter/material.dart';
import '../Utils/routes_name.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Center(
          child: InkWell(
            onTap: () {
              Navigator.pushNamed(context, RoutesName.screenTwo, arguments: {
                'Node': 'Js Module',
                'Flutter': 'Good for App',
              });
            },
            child: Container(
              width: double.infinity,
              height: 50,
              decoration: const BoxDecoration(
                color: Colors.green,
              ),
              child: Center(child: Text('Screen One')),
            ),
          ),
        ),
      ),
    );
  }
}
