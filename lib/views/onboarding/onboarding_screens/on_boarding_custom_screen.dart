import 'package:flutter/material.dart';
import 'package:pageview_onboarding/widgets/customSizedox.dart';
import 'package:pageview_onboarding/widgets/custom_flat_button.dart';
import 'package:pageview_onboarding/widgets/custom_icon_button.dart';
import 'package:pageview_onboarding/widgets/onboarding/onboarding_center_tile.dart';
import '../../../utils/onboarding/onboarding_assets.dart';
import '../../../widgets/onboarding/onborading_picture_tile.dart';

class CustomOnBoardingScreen extends StatelessWidget {
  // final VoidCallback skipButton;
  // final VoidCallback nextButton;
  final String image;
  final String heading;
  final String discreption;
  const CustomOnBoardingScreen(
      {super.key,
      required this.image,
      required this.heading,
      required this.discreption});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        CustomOnBoardingTile(
          imageAddress: OnBoardingAssets.ScreenImage[1],
        ),
        OnBoardingCenterTile(mainHeading: heading, discription: discreption),
      ],
    );
  }
}
