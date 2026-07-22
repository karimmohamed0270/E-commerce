import 'package:e_commerce/core/utils/app_images.dart';
import 'package:e_commerce/core/utils/styles.dart';
import 'package:e_commerce/features/onbording/presintaions/views/widgets/pageview_item.dart';
import 'package:flutter/material.dart';

class OnbaordingPageview extends StatelessWidget {
  const OnbaordingPageview({
    super.key, 
    required this.pageController, 
    required this.currentPage, // 1. Pass the changing state down
  });

  final PageController pageController;
  final int currentPage; // Track page index reactively

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController, 
      children: [
        // Page 1
        PageViewItem(
          isvisible: true, // Always visible on the first page
          image: Assets.imagePageViewItem1Image,
          title:  Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('FruitsHub', style: TextStyles.bold23.copyWith(color: Colors.green)),
              SizedBox(width: 4),
              Text('مرحبا بك في  تطبيقنا', style: TextStyles.bold23),
            ],
          ),
          description: 'اكتشف تجربة تسوق فريدة ومتطورة اهلا بك هيا لاكتشاف التطبيق ',
          backgroundColor: Assets.imagePageViewItem1BackgroundImage,
        ),

        // Page 2
        PageViewItem(
          isvisible: false,
          image: Assets.imagePageViewItem1Image, 
          title:  Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('FruitsHub ', style: TextStyles.bold23.copyWith(color: Colors.green)),
              SizedBox(width: 4),
              Text('مرحبا بك في  تطبيقنا', style: TextStyles.bold23),
            ],
          ),
          description: ' هيا بنا لنكتشف التطبيق ',
          backgroundColor: Assets.imagePageViewItem2Image,
        ),
      ],
    );
  }
}