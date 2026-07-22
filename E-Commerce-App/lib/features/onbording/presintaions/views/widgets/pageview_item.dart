import 'package:e_commerce/core/services/shared_prefernces.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

class PageViewItem extends StatelessWidget {
  const PageViewItem({
    super.key,
    required this.image,
    required this.title,
    required this.description,
    required this.backgroundColor,
    required this.isvisible,
  });

  final String image;
  final Widget title;
  final String description;
  final String backgroundColor;
  final bool isvisible;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        GestureDetector(
          onTap: () {
            GoRouter.of(context).go('/login'); // Navigate to the login screen
            SharedPreferencesSingleton.setBool('onboarding_completed', true);
          },
          child: Padding(
            padding: const EdgeInsets.only(right: 16.0, top: 16.0),
            child: Visibility(
              visible: isvisible,
              child: const Text('تخط', style: TextStyle(fontSize: 16)),
            ),
          ),
        ),

        Stack(
          children: [
            // // Background
            // Positioned.fill(
            //   child: SvgPicture.asset(backgroundColor, fit: BoxFit.cover),
            // ),
            Center(
              child: Column(
                children: [
                  const SizedBox(height: 40),

                  Padding(
                    padding: const EdgeInsets.only(top: 60.0),
                    child: SvgPicture.asset(
                      image,
                      height: MediaQuery.of(context).size.height * 0.45,
                      // fit: BoxFit.contain,
                    ),
                  ),

                  const SizedBox(height: 24),

                  title,

                  const SizedBox(height: 12),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: Text(
                      description,
                      textAlign: TextAlign.center,
                      style: const TextStyle(fontSize: 16, color: Colors.grey),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
