import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/colors.dart';

class TitleMobile extends StatelessWidget {
  const TitleMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      "What I Can Do",
      style: const TextStyle(
        fontSize: 17,
        fontWeight: FontWeight.bold,
        color: CustomColor.whitePrimary,
      ),
    );
  }
}
