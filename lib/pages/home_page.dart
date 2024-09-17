import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          //Main
          Container(
            height: 500,
            width: double.maxFinite,
          ),
          //SKILLS
          Container(
            height: 500,
            width: double.maxFinite,
            color: Colors.blueGrey,
          ),
          //PROJECTS
          Container(
            height: 500,
            width: double.maxFinite,
          ),
          //CONTACTS
          Container(
            height: 500,
            width: double.maxFinite,
            color: Colors.blueGrey,
          ),
          //FOOTER
          Container(
            height: 500,
            width: double.maxFinite,
          ),
        ],
      ),
    );
  }
}
