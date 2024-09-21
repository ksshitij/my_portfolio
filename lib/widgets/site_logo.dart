import 'package:flutter/material.dart';

import '../constants/colors.dart';

class SiteLogo extends StatefulWidget {
  const SiteLogo({
    super.key,
    this.onTap,
  });
  final VoidCallback? onTap;

  @override
  _SiteLogoState createState() => _SiteLogoState();
}

class _SiteLogoState extends State<SiteLogo>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    )..repeat(reverse: true); // Animate back and forth

    _animation = Tween<double>(begin: 0.0, end: 1.0).animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: FadeTransition(
        opacity: _animation,
        child: Container(
          width: 100, // Customize the size of the logo
          height: 100,
          child: const FlutterLogo(
            size: 60, // Adjust the size of the Flutter logo
            style:
                FlutterLogoStyle.markOnly, // Use mark-only style for simplicity
          ),
        ),
      ),
    );
  }
}
