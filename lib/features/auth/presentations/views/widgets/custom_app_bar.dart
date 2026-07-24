import 'package:e_commerce/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({required this.text, super.key});
  final String text;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      // leading: IconButton(
      //   icon: const Icon(Icons.arrow_back_ios_new),
      //   onPressed: () {
      //     Navigator.pop(context);
      //   },
      // ),
      centerTitle: true,
      title: Text(text, style: TextStyles.bold23),
    );
  }
}
