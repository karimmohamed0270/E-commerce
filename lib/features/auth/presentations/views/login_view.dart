import 'package:e_commerce/features/auth/presentations/views/widgets/custom_app_bar.dart';
import 'package:e_commerce/features/auth/presentations/views/widgets/login_view_body.dart';
import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: CustomAppBar(),
      ),
      body: LoginViewBody(),
    );
  }
}
