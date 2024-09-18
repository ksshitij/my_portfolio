import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/colors.dart';

class MainMobile extends StatelessWidget {
  const MainMobile({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 28.0,
        vertical: 28.0,
      ),
      height: screenHeight,
      constraints: BoxConstraints(
        minHeight: 560.0,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //avatar img
          ShaderMask(
            shaderCallback: (bounds) {
              return LinearGradient(colors: [
                CustomColor.scaffoldBg.withOpacity(0.6),
                CustomColor.scaffoldBg.withOpacity(0.6),
              ]).createShader(bounds);
            },
            blendMode: BlendMode.srcATop,
            child: Image.asset(
              "assets/my_flutter_avatar.png",
              width: screenWidth,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          //intro message
          const Text(
            "Hi,\nI'm Kshitij Patidar\nA Software Developer",
            style: TextStyle(
              fontSize: 22.0,
              height: 1.5,
              fontWeight: FontWeight.bold,
              color: CustomColor.whitePrimary,
            ),
          ),
          SizedBox(
            height: 15,
          ),
          SizedBox(
            width: 192,
            child: ElevatedButton(
              onPressed: () {},
              child: const Text(
                "Get In Touch",
                style: TextStyle(
                  color: CustomColor.whitePrimary,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
