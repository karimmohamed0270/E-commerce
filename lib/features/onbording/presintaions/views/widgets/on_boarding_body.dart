import 'package:dots_indicator/dots_indicator.dart';
import 'package:e_commerce/core/services/shared_prefernces.dart';
import 'package:e_commerce/core/widgets/custom_btn.dart';
import 'package:e_commerce/features/onbording/presintaions/views/widgets/onbaording_pageview.dart';
import 'package:flutter/material.dart';

class OnBoardingBody extends StatefulWidget {
  const OnBoardingBody({super.key});

  @override
  State<OnBoardingBody> createState() => _OnBoardingBodyState();
}

class _OnBoardingBodyState extends State<OnBoardingBody> {
  late PageController pageController;
  int currentPage = 0;

  @override
  void initState() {
    super.initState();

    pageController = PageController();

    pageController.addListener(() {
      setState(() {
        currentPage = pageController.page!.round();
      });
    });
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: OnbaordingPageview(
            pageController: pageController,
            currentPage: currentPage,
          ),
        ),

        DotsIndicator(
          dotsCount: 2,
          // positon only that will link page with the dot
          position: currentPage,
          decorator: const DotsDecorator(
            color: Colors.grey, // Inactive dots
            activeColor: Colors.green, // Active dot
          ),
        ),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Visibility(
            visible: currentPage == 1,
            child: CustomButton(
              btnColor: Colors.green,

              btnText: "ابدأ الان",
              textColor: Colors.white,
              onPressed: () {
                // Navigate to the login screen
                Navigator.pushNamed(context, '/login');
                SharedPreferencesSingleton.setBool(
                  'onboarding_completed',
                  true,
                ); // Save onboarding completion state
              },
            ),
          ),
        ),
      ],
    );
  }
}
