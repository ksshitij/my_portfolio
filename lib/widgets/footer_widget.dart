import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/colors.dart';

class FooterWidget extends StatelessWidget {
  const FooterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
              padding: const EdgeInsets.symmetric(vertical: 20),
              width: double.maxFinite,
              alignment: Alignment.center,
              child:const Text(
                "Made by Kshitij Patidar with Flutter 3.25",
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  color: CustomColor.whiteSecondary,
                ),
              ),
            );
  }
}