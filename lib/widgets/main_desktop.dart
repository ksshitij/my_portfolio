import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/colors.dart';

class MainDesktop extends StatelessWidget {
  const MainDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;
    return Container(
              margin: EdgeInsets.symmetric(
                horizontal: 20.0,
              ),
              height: screenHeight / 1.2,
              constraints: const BoxConstraints(minHeight: 350.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      //intro messege
                      const Text(
                        "Hi,\nI'm Kshitij Patidar\nA Software Developer",
                        style: TextStyle(
                          fontSize: 26.0,
                          height: 1.5,
                          fontWeight: FontWeight.bold,
                          color: CustomColor.whitePrimary,
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      SizedBox(
                        width: 255,
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
                  Image.asset(
                    "assets/my_flutter_avatar.png",
                    width: screenWidth / 2.75,
                  ),
                ],
              ),
            );
  }
}