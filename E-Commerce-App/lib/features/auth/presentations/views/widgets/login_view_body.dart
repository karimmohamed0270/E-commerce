import 'package:e_commerce/features/auth/presentations/views/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          CustomTextField(
            hintText: 'البريد الالكتروني',
            inputtype: TextInputType.emailAddress,
            icon: Icons.email,
          ),
          CustomTextField(
            hintText: 'كلمة المرور',
            inputtype: TextInputType.visiblePassword,
            icon: Icons.lock,
          ),
        ],
      ),
    );
  }
}
