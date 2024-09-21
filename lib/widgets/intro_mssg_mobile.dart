import 'dart:async';
import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/colors.dart';

class IntroMssgMobile extends StatefulWidget {
  const IntroMssgMobile({super.key});

  @override
  _IntroMssgMobileState createState() => _IntroMssgMobileState();
}

class _IntroMssgMobileState extends State<IntroMssgMobile> {
  final String text = "Hi,\nI'm Kshitij Patidar\nA Flutter Developer";
  String displayedText = ""; // No initial space
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
        fontSize: 21.0,
        height: 1.3,
        fontWeight: FontWeight.bold,
        color: CustomColor.whitePrimary,
      ),
    );
  }
}
