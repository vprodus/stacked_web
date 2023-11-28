import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:stacked_web/ui/common/app_colors.dart';
import 'package:stacked_web/ui/common/shared_styles.dart';

class HomeSubtitle extends StatelessWidget {
  const HomeSubtitle({super.key});

  @override
  Widget build(BuildContext context) {
    final children = [
      Text(
        'Build amazing software, the right way. ',
        style: ktsBodyLarge.copyWith(fontWeight: FontWeight.w600),
      ),
      GradientText(
        'Sign up to be notified',
        style: ktsBodyLarge.copyWith(fontWeight: FontWeight.w600),
        colors: kgTitle,
      )
    ];
    return ScreenTypeLayout.builder(
      mobile: (_) => Column(children: children),
      desktop: (_) => Row(children: children),
    );
  }
}
