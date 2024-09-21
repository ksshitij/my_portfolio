import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/colors.dart';
import 'package:my_portfolio/widgets/intro_mssg_mobile.dart';

class MainMobile extends StatefulWidget {
  const MainMobile({super.key});

  @override
  _MainMobileState createState() => _MainMobileState();
}

class _MainMobileState extends State<MainMobile> {
  bool _showAboutMeText = false;

  void _toggleAboutMe() {
    setState(() {
      _showAboutMeText = !_showAboutMeText;
    });
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;

    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 28.0,
        vertical: 28.0,
      ),
      // Removed fixed height and constraints
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Avatar image
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
              width: screenWidth / 1.3,
            ),
          ),
          const SizedBox(height: 20),

          // Intro message
          const IntroMssgMobile(),
          const SizedBox(height: 15),

          // Conditional rendering for "About Me" button and text
          if (_showAboutMeText)
            GestureDetector(
              onTap: _toggleAboutMe,
              child: Container(
                constraints: BoxConstraints(
                  maxWidth: screenWidth * 0.8, // Use 80% of the screen width
                ),
                padding: const EdgeInsets.symmetric(
                    vertical: 8, horizontal: 8), // Adjusted padding
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: CustomColor.whiteSecondary.withOpacity(0.2),
                ),
                child: const Text(
                  "I am a Computer Science student at VIT Bhopal with a love for technology and coding. I enjoy working on projects, solving complex problems, and hitting the gym.",
                  style: TextStyle(
                    fontSize: 12, // Adjusted font size
                    color: CustomColor.whitePrimary,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            )
          else
            ElevatedButton(
              onPressed: _toggleAboutMe,
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(
                    vertical: 18.0, horizontal: 35.0), // Larger button size
                textStyle: const TextStyle(
                  fontSize: 20, // Bigger font size for button
                ),
              ),
              child: const Text(
                "About Me",
                style: TextStyle(
                  color: CustomColor.whitePrimary,
                ),
              ),
            ),
        ],
      ),
    );
  }
}
