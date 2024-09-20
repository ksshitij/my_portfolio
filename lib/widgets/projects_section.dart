import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/colors.dart';
import 'package:my_portfolio/utils/project_utils.dart';
import 'package:my_portfolio/widgets/project_card.dart';

class ProjectsSection extends StatelessWidget {
  const ProjectsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Container(
      width: screenWidth,
      padding: const EdgeInsets.fromLTRB(25, 20, 25, 60),
      child: Column(
        children: [
          //PROJECT TITLES
          const Text(
            "PROJECTS",
            style: TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.bold,
              color: CustomColor.whitePrimary,
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          //PROJECT CARDS
          Wrap(
            spacing: 25,
            runSpacing: 25,
            children: [
              for (int i = 0; i < hobbyProjectUtils.length; i++)
                ProjectCardWidget(
                  project: hobbyProjectUtils[i],
                ),
            ],
          ),
        ],
      ),
    );
  }
}
