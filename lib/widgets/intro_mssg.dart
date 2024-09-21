import 'dart:async';
import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/colors.dart';

class IntroMssg extends StatefulWidget {
  const IntroMssg({super.key});

  @override
  _IntroMssgState createState() => _IntroMssgState();
}

class _IntroMssgState extends State<IntroMssg> {
  final String text = "Hi,\nI'm Kshitij Patidar\nA Software Developer";
  String displayedText = "";
  late Timer _timer;

  @override
  void initState() {
    super.initState();
    _startTyping();
  }

  void _startTyping() {
    int index = 0;
    _timer = Timer.periodic(const Duration(milliseconds: 100), (timer) {
      if (index < text.length) {
        setState(() {
          displayedText += text[index];
        });
        index++;
      } else {
        timer.cancel();
      }
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      displayedText,
      style: const TextStyle(
        fontSize: 26.0,
        height: 1.5,
        fontWeight: FontWeight.bold,
        color: CustomColor.whitePrimary,
      ),
    );
  }
}
