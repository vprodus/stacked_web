import 'package:flutter_svg/svg.dart';
import 'package:stacked_web/ui/common/app_colors.dart';
import 'package:stacked_web/ui/common/app_constants.dart';
import 'package:stacked_web/ui/common/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_web/ui/views/home/widgets/home_image.dart';
import 'package:stacked_web/ui/views/home/widgets/home_subtitle.dart';
import 'package:stacked_web/ui/views/home/widgets/home_title.dart';
import 'package:stacked_web/ui/widgets/common/academy_icon.dart';
import 'package:stacked_web/ui/widgets/common/google_sign_in.dart';

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
                  const AcademyIcon(),
                  const Spacer(flex: 2),
                  const HomeTitle(),
                  const HomeSubtitle(),
                  verticalSpaceMedium,
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 100),
                    child: SvgPicture.asset('assets/sign-up-arrow.svg'),
                  ),
                  verticalSpaceSmall,
                  const GoogleSignIn(),
                  const Spacer(flex: 3),
                ],
              ),
              const HomeImage(),
            ],
          ),
        ),
      ),
    );
  }
}
