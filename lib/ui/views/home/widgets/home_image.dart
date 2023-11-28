import 'package:flutter/material.dart';
import 'package:stacked_web/ui/common/app_constants.dart';

class HomeImage extends StatelessWidget {
  const HomeImage({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Image.asset(
        'assets/master-web-hero-image.png',
        width: kdDesktopMaxContentWidth * 0.4,
        height: double.infinity,
        fit: BoxFit.cover,
      ),
    );
  }
}
