import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/colors.dart';
import 'package:my_portfolio/widgets/contact_section.dart';
import 'package:my_portfolio/widgets/intro_mssg.dart';

class MainDesktop extends StatefulWidget {
  const MainDesktop({super.key});

  @override
  _MainDesktopState createState() => _MainDesktopState();
}

class _MainDesktopState extends State<MainDesktop> {
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
    final screenHeight = screenSize.height;

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20.0),
      height: screenHeight / 1.1,
      constraints: const BoxConstraints(minHeight: 350.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Intro message
              const IntroMssg(),
              const SizedBox(height: 15),

              // Conditional rendering for "About Me" button and text
              if (_showAboutMeText)
                GestureDetector(
                  onTap: _toggleAboutMe,
                  child: Container(
                    constraints: BoxConstraints(
                      maxWidth: screenWidth *
                          0.4, // Use available space up to 40% of the screen width
                    ),
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: CustomColor.whiteSecondary.withOpacity(0.2),
                    ),
                    child: const Text(
                      "I am a Computer Science student at VIT Bhopal with a love for technology and coding. I enjoy working on projects, solving complex problems, and hitting the gym.",
                      style: TextStyle(
                        fontSize: 18,
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
                      fontSize: 20, // Bigger font size
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
          Image.asset(
            "assets/my_flutter_avatar.png",
            width: screenWidth / 2.75,
          ),
        ],
      ),
    );
  }
}
