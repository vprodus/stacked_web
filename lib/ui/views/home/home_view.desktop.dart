import 'package:flutter_svg/svg.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:stacked_web/ui/common/app_colors.dart';
import 'package:stacked_web/ui/common/app_constants.dart';
import 'package:stacked_web/ui/common/shared_styles.dart';
import 'package:stacked_web/ui/common/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'home_viewmodel.dart';

class HomeViewDesktop extends ViewModelWidget<HomeViewModel> {
  const HomeViewDesktop({super.key});

  @override
  Widget build(BuildContext context, HomeViewModel viewModel) {
    return Scaffold(
      backgroundColor: kcBackgroundColor,
      body: Center(
        child: SizedBox(
          width: kdDesktopMaxContentWidth,
          height: kdDesktopMaxContentHeight,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'FilledStacks Academy',
                    style: ktsBodyRegular.copyWith(fontWeight: FontWeight.w800),
                  ),
                  const Spacer(flex: 2),
                  GradientText(
                    'MASTER\nFLUTTER',
                    style: ktsTitleText,
                    colors: kgTitle,
                  ),
                  Text(
                    'ON THE WEB',
                    style: ktsTitleText,
                  ),
                  Row(
                    children: [
                      Text(
                        'Build amazing software, the right way. ',
                        style:
                            ktsBodyLarge.copyWith(fontWeight: FontWeight.w600),
                      ),
                      GradientText(
                        'Sign up to be notified',
                        style:
                            ktsBodyLarge.copyWith(fontWeight: FontWeight.w600),
                        colors: kgTitle,
                      )
                    ],
                  ),
                  verticalSpaceMedium,
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 100),
                    child: SvgPicture.asset('assets/sign-up-arrow.svg'),
                  ),
                  verticalSpaceSmall,
                  Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.yellow,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 50, vertical: 10),
                    child: const Text(
                      'Sign up with Google',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  const Spacer(flex: 3),
                ],
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  'assets/master-web-hero-image.png',
                  width: kdDesktopMaxContentWidth * 0.4,
                  height: double.infinity,
                  fit: BoxFit.cover,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
