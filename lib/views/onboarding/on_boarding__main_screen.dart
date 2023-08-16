import 'package:flutter/material.dart';
import 'package:pageview_onboarding/views/homepage/homepage.dart';
import '../../utils/onboarding/onboarding_assets.dart';
import '../../utils/onboarding/onboarding_strings.dart';
import '../../views/onboarding/onboarding_screens/on_boarding_custom_screen.dart';
import '../../widgets/customSizedox.dart';
import '../../widgets/onboarding/onboarding_buttom_bar.dart';

class OnBoardingMainScreen extends StatefulWidget {
  OnBoardingMainScreen({super.key});

  @override
  State<OnBoardingMainScreen> createState() => _OnBoardingMainScreenState();
}

class _OnBoardingMainScreenState extends State<OnBoardingMainScreen> {
  late PageController onBoardingPageContorller;
  int currentPage = 0;
  @override
  void initState() {
    onBoardingPageContorller = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    onBoardingPageContorller.dispose();
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          SizedBox(
            height: 600,
            width: double.infinity,
            child: PageView.builder(
              onPageChanged: (val) {
                setState(() {
                  currentPage = val;
                });
              },
              controller: onBoardingPageContorller,
              itemBuilder: (context, index) {
                return CustomOnBoardingScreen(
                  discreption: OnBoardingConstants.discriptions,
                  heading: OnBoardingConstants.mainHeading[index],
                  image: OnBoardingAssets.ScreenImage[index],
                );
              },
              itemCount: OnBoardingConstants.mainHeading.length,
            ),
          ),
          const CustomSizedBox(
            height: 30,
          ),
          CustomButtomBar(
            flatSkipButton: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const MyHomePage()),
              );
            },
            nextIconButton: () {
              if (currentPage == 2) {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const MyHomePage()),
                );
              } else {
                onBoardingPageContorller.nextPage(
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.linear);
              }
            },
          ),
        ]),
      ),
    );
  }
}
