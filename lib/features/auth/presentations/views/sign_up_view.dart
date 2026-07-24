import 'package:e_commerce/features/auth/presentations/views/widgets/custom_app_bar.dart';
import 'package:e_commerce/features/auth/presentations/views/widgets/sign_up_body.dart';
import 'package:flutter/material.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: CustomAppBar(text: 'انشاء حساب'),
      ),
      body: SignUpBody(),
    );
  }
}
