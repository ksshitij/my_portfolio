import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/colors.dart';

class ProjectCardWidget extends StatelessWidget {
  const ProjectCardWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      height: 280,
      width: 250,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: CustomColor.bgLight2,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          //PROJECT
          Image.asset(
            "",
            height: 140,
            width: 250,
            fit: BoxFit.cover,
          ),
          //TITLE
          Padding(
            padding: const EdgeInsets.fromLTRB(12, 15, 12, 12),
            child: Text(
              "Title",
              style: TextStyle(
                fontWeight: FontWeight.w600,
                color: CustomColor.whitePrimary,
              ),
            ),
          ),
          //Subtitles
          Padding(
            padding: const EdgeInsets.fromLTRB(12, 0, 12, 12),
            child: Text(
              "",
              style: TextStyle(
                fontSize: 10,
                color: CustomColor.whiteSecondary,
              ),
            ),
          ),
          const Spacer(),
          //FOOTER
          Container(
            color: CustomColor.bgLight1,
            padding: const EdgeInsets.symmetric(
              horizontal: 12,
              vertical: 10,
            ),
            child: Row(
              children: [
                Text(
                  "Ref Link :",
                  style: TextStyle(
                    color: CustomColor.yellowSecondary,
                    fontSize: 10,
                  ),
                ),
                const Spacer(),
                InkWell(
                  onTap: () {},
                  child: Image.asset(
                    "assets/web_icon.png",
                    width: 19,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
