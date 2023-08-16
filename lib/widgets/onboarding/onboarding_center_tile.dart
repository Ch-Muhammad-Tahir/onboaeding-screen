import 'package:flutter/material.dart';
import 'package:pageview_onboarding/widgets/customSizedox.dart';

class OnBoardingCenterTile extends StatelessWidget {
  final String mainHeading;
  final String discription;
  const OnBoardingCenterTile(
      {super.key, required this.mainHeading, required this.discription});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15, bottom: 10, left: 15, right: 15),
      child: Column(
        children: [
          Text(
            mainHeading,
            style: const TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          const CustomSizedBox(height: 10),
          Text(
            discription,
            style: const TextStyle(fontSize: 18),
            textAlign: TextAlign.justify,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          )
        ],
      ),
    );
  }
}
