import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:my_portfolio/constants/colors.dart';
import 'package:my_portfolio/constants/size.dart';
import 'package:my_portfolio/constants/sns_links.dart';
import 'package:my_portfolio/widgets/custom_text_field.dart';
import 'dart:js' as js;

class ContactSection extends StatefulWidget {
  const ContactSection({super.key});

  @override
  _ContactSectionState createState() => _ContactSectionState();
}

class _ContactSectionState extends State<ContactSection> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _messageController = TextEditingController();
  bool _isSubmitted = false;

  void _sendEmail() {
    final String name = _nameController.text;
    final String email = _emailController.text;
    final String message = _messageController.text;

    // Here you would integrate your email sending logic
    // For now, we'll just simulate sending an email by showing the tick animation
    if (name.isNotEmpty && email.isNotEmpty && message.isNotEmpty) {
      // Simulate sending email
      js.context.callMethod('open', [
        'mailto:kshitijpatidar2003@gmail.com?subject=Message from $name&body=$message'
      ]);

      setState(() {
        _isSubmitted = true;
      });

      // Reset the form after a delay
      Future.delayed(const Duration(seconds: 2), () {
        setState(() {
          _isSubmitted = false;
          _nameController.clear();
          _emailController.clear();
          _messageController.clear();
        });
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(25, 20, 25, 60),
      color: CustomColor.bgLight1,
      child: Column(
        children: [
          const SizedBox(height: 20),
          const Text(
            "Contact Me",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24,
              color: CustomColor.whitePrimary,
            ),
          ),
          const SizedBox(height: 50),
          ConstrainedBox(
            constraints: BoxConstraints(
              maxWidth: 700,
              maxHeight: 105,
            ),
            child: LayoutBuilder(builder: (context, constraints) {
              if (constraints.maxWidth >= kMinDesktopWidth) {
                return buildNameEmailFieldDesktop();
              } else {
                return buildNameEmailFieldMobile();
              }
            }),
          ),
          const SizedBox(height: 15),
          // Message field
          ConstrainedBox(
            constraints: BoxConstraints(
              maxWidth: 700,
            ),
            child: CustomTextField(
              controller: _messageController,
              hintText: "Your message",
              maxLines: 14,
            ),
          ),
          const SizedBox(height: 20),
          // Send button
          ConstrainedBox(
            constraints: BoxConstraints(
              maxWidth: 300,
            ),
            child: SizedBox(
              width: double.maxFinite,
              child: ElevatedButton(
                onPressed: _sendEmail,
                style: ElevatedButton.styleFrom(
                  backgroundColor: CustomColor.yellowPrimary,
                ),
                child: _isSubmitted
                    ? Icon(Icons.check, color: CustomColor.whitePrimary)
                    : const Text(
                        "Get In Touch",
                        style: TextStyle(
                          color: CustomColor.whitePrimary,
                        ),
                      ),
              ),
            ),
          ),
          const SizedBox(height: 30),
          ConstrainedBox(
            constraints: BoxConstraints(
              maxWidth: 300,
            ),
            child: const Divider(),
          ),
          const SizedBox(height: 15),
          // SNS Icon Buttons
          Wrap(
            spacing: 12,
            runSpacing: 12,
            alignment: WrapAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  js.context.callMethod('open', [SnsLinks.github]);
                },
                child: Image.asset(
                  "assets/github.png",
                  width: 28,
                ),
              ),
              InkWell(
                onTap: () {
                  js.context.callMethod('open', [SnsLinks.linkedIn]);
                },
                child: Image.asset(
                  "assets/linkedin.png",
                  width: 28,
                ),
              ),
              InkWell(
                onTap: () {
                  js.context.callMethod('open', [SnsLinks.instagram]);
                },
                child: Image.asset(
                  "assets/instagram.png",
                  width: 28,
                ),
              ),
              InkWell(
                onTap: () {
                  js.context.callMethod('open', [SnsLinks.leetcode]);
                },
                child: Image.asset(
                  "assets/leetcode.png",
                  width: 24,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Row buildNameEmailFieldDesktop() {
    return Row(
      children: [
        Flexible(
          child: CustomTextField(
            controller: _nameController,
            hintText: "Your Name",
          ),
        ),
        const SizedBox(width: 15),
        Flexible(
          child: CustomTextField(
            controller: _emailController,
            hintText: "Your email",
          ),
        ),
      ],
    );
  }

  Column buildNameEmailFieldMobile() {
    return Column(
      children: [
        Flexible(
          child: CustomTextField(
            controller: _nameController,
            hintText: "Your Name",
          ),
        ),
        const SizedBox(height: 15),
        Flexible(
          child: CustomTextField(
            controller: _emailController,
            hintText: "Your email",
          ),
        ),
      ],
    );
  }
}
