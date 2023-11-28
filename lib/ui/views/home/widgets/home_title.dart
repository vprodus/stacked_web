import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:stacked_web/ui/common/app_colors.dart';
import 'package:stacked_web/ui/common/shared_styles.dart';
import 'package:stacked_web/ui/common/ui_helpers.dart';

class HomeTitle extends StatelessWidget {
  const HomeTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: getValueForScreenType(
        context: context,
        mobile: CrossAxisAlignment.center,
        desktop: CrossAxisAlignment.start,
      ),
      children: [
        GradientText(
          'MASTER\nFLUTTER',
          style: ktsTitleText.copyWith(
            fontSize: getResponsiveFontSize(context, fontSize: 80),
          ),
          colors: kgTitle,
        ),
        Text(
          'ON THE WEB',
          style: ktsTitleText.copyWith(
            fontSize: getResponsiveFontSize(context, fontSize: 80),
          ),
        ),
      ],
    );
  }
}
