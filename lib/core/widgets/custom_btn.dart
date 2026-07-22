import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.btnColor,
    required this.btnText,
    required this.textColor,
    this.onPressed,
  });
  final Color btnColor;
  final String btnText;
  final Color textColor;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: double.infinity,
      child: TextButton(
        onPressed: () {},
        style: TextButton.styleFrom(backgroundColor: btnColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
            ),
      ),
        child: Text(btnText, style: TextStyle(color: textColor))),
    );
  }
}
