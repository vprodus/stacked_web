import 'package:flutter_svg/flutter_svg.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:stacked_web/ui/common/app_colors.dart';
import 'package:stacked_web/ui/common/app_constants.dart';
import 'package:stacked_web/ui/common/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'home_viewmodel.dart';

class HomeViewTablet extends ViewModelWidget<HomeViewModel> {
  const HomeViewTablet({super.key});

  @override
  Widget build(BuildContext context, HomeViewModel viewModel) {
    return Scaffold(
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
                  const Text(
                    'FilledStacks Academy',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  const Spacer(flex: 2),
                  GradientText(
                    'MASTER\nFLUTTER',
                    style: const TextStyle(
                      fontWeight: FontWeight.w800,
                      fontSize: 80,
                      height: 0.95,
                    ),
                    colors: const [Color(0xff0CFF60), Color(0xff0091FB)],
                  ),
                  const Text(
                    'ON THE WEB',
                    style: TextStyle(
                      fontWeight: FontWeight.w800,
                      fontSize: 80,
                      height: 0.95,
                    ),
                  ),
                  Row(
                    children: [
                      const Text(
                        'Build amazing software, the right way.',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 20,
                        ),
                      ),
                      GradientText(
                        'Sign up to be notified',
                        style: const TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 20,
                        ),
                        colors: const [
                          Color(0xff0CFF60),
                          Color(0xff0091FB),
                        ],
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
