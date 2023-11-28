import 'package:flutter/material.dart';
import 'package:stacked_web/ui/common/shared_styles.dart';

class AcademyIcon extends StatelessWidget {
  const AcademyIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      'FilledStacks Academy',
      style: ktsBodyRegular.copyWith(fontWeight: FontWeight.w800),
    );
  }
}
