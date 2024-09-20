import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/colors.dart';

class TitleDesktop extends StatelessWidget {
  const TitleDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      "What I Can Do",
      style: TextStyle(
        fontSize: 26,
        fontWeight: FontWeight.bold,
        color: CustomColor.whitePrimary,
      ),
    );
  }
}
