import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:my_portfolio/constants/colors.dart';
import 'package:my_portfolio/constants/nav_items.dart';
import 'package:my_portfolio/constants/size.dart';
import 'package:my_portfolio/constants/skill_items.dart';
import 'package:my_portfolio/constants/sns_links.dart';
import 'package:my_portfolio/styles/style.dart';
import 'package:my_portfolio/utils/project_utils.dart';
import 'package:my_portfolio/widgets/contact_section.dart';
import 'package:my_portfolio/widgets/custom_text_field.dart';
import 'package:my_portfolio/widgets/drawer_mobile.dart';
import 'package:my_portfolio/widgets/footer_widget.dart';
import 'package:my_portfolio/widgets/main_desktop.dart';
import 'package:my_portfolio/widgets/main_mobile.dart';
import 'package:my_portfolio/widgets/project_card.dart';
import 'package:my_portfolio/widgets/projects_section.dart';
import 'package:my_portfolio/widgets/site_logo.dart';
import 'package:my_portfolio/widgets/skills_desktop.dart';
import 'package:my_portfolio/widgets/skills_mobile.dart';
import 'package:my_portfolio/widgets/title_desktop.dart';
import 'package:my_portfolio/widgets/title_mobile.dart';

import '../widgets/header_desktop.dart';
import '../widgets/header_mobile.dart';
import 'dart:js' as js;

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final scrollController = ScrollController();
  final List<GlobalKey> navbarKeys = List.generate(4, (index) => GlobalKey());
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;

    return LayoutBuilder(builder: (context, constraints) {
      return Scaffold(
        key: scaffoldKey,
        backgroundColor: CustomColor.scaffoldBg,
        endDrawer: constraints.maxWidth >= kMinDesktopWidth
            ? null
            : DrawerMobile(onNavItemTap: (int navIndex) {
                //call function
                scaffoldKey.currentState?.closeEndDrawer();
                scrollTOSection(navIndex);
              }),
        body: SingleChildScrollView(
          controller: scrollController,
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              SizedBox(
                key: navbarKeys.first,
              ),
              //Main
              if (constraints.maxWidth >= kMinDesktopWidth)
                HeaderDesktop(onNavMenuTap: (int navIndex) {
                  scrollTOSection(navIndex);
                })
              else
                HeaderMobile(
                  onLogoTap: () {},
                  onMenuTap: () {
                    scaffoldKey.currentState?.openEndDrawer();
                  },
                ),
              if (constraints.maxWidth >= kMinDesktopWidth)
                const MainDesktop()
              else
                const MainMobile(),

              //SKILLS
              Container(
                key: navbarKeys[1],
                height: 490.0,
                width: screenWidth,
                padding: const EdgeInsets.fromLTRB(25, 20, 25, 60),
                color: CustomColor.bgLight1,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    //TITLE
                    if (constraints.maxWidth >= kMedDesktopWidth)
                      const TitleDesktop()
                    else
                      const TitleMobile(),

                    if (constraints.maxWidth >= kMedDesktopWidth)
                      const SizedBox(
                        height: 90.0,
                      )
                    else
                      const SizedBox(
                        height: 18.0,
                      ),

                    //PLATFORMS AND SKILLS
                    if (constraints.maxWidth >= kMedDesktopWidth)
                      const SkillsDesktop()
                    else
                      const SkillsMobile(),
                  ],
                ),
              ),

              //PROJECTS
              ProjectsSection(
                key: navbarKeys[2],
              ),
              //sizedbox should be here if needed
              //CONTACTS
              ContactSection(
                key: navbarKeys[3],
              ),
              //FOOTER
              const FooterWidget(),
            ],
          ),
        ),
      );
    });
  }

  void scrollTOSection(int navIndex) {
    if (navIndex == 4) {
      //return your resume link
      js.context.callMethod('open', [SnsLinks.resume]);
      return;
    }
    final key = navbarKeys[navIndex];
    Scrollable.ensureVisible(
      key.currentContext!,
      duration: const Duration(microseconds: 500),
      curve: Curves.easeInOut,
    );
  }
}
