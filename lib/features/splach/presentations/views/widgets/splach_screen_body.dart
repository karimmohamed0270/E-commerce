import 'package:e_commerce/core/services/shared_prefernces.dart';
import 'package:e_commerce/core/utils/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

class SplachScreenBody extends StatefulWidget {
  const SplachScreenBody({super.key});

  @override
  State<SplachScreenBody> createState() => _SplachScreenBodyState();
}


class _SplachScreenBodyState extends State<SplachScreenBody> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // nav to home after 2 seconds
    navigateToHome();
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SvgPicture.asset(Assets.imagePlant),
          ],
        ),
        SvgPicture.asset(Assets.imageLogo),
        SvgPicture.asset(Assets.imageSplashBottom),
        // Add your widgets here
      ],
    );
  }

    void navigateToHome()  {
    bool onboardingCompleted = SharedPreferencesSingleton.getBool('onboarding_completed');
    Future.delayed(const Duration(seconds: 2), () {
      if (onboardingCompleted) {
        GoRouter.of(context).push('/login'); // Navigate to the login screen
      } else {
        GoRouter.of(context).push('/onboarding');
      }
    });
  }
}
