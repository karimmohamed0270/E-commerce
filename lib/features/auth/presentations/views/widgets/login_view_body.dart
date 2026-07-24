import 'package:e_commerce/core/widgets/custom_btn.dart';
import 'package:e_commerce/features/auth/presentations/views/widgets/custom_auth_container.dart';
import 'package:e_commerce/features/auth/presentations/views/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SingleChildScrollView(
        child: Column(
          children: [
            const CustomTextField(
              hintText: 'البريد الالكتروني',
              inputtype: TextInputType.emailAddress,
              icon: Icons.email,
            ),
            const CustomTextField(
              hintText: 'كلمة المرور',
              inputtype: TextInputType.visiblePassword,
              icon: Icons.lock,
            ),

            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(onPressed: null, child: Text('نسيت كلمة المرور؟')),
              ],
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 18.0, vertical: 8.0),
              child: CustomButton(
                btnText: 'تسجيل الدخول',
                btnColor: Color(0xff53B175),
                textColor: Colors.white,
                onPressed: null,
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: () {
                      GoRouter.of(context).pushReplacement('/signup');
                    },
                    child: const Text('انشاء حساب'),
                  ),
                  const Text('ليس لديك حساب؟'),
                ],
              ),
            ),

            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 18.0, vertical: 16.0),
              child: CustomAuthContainer(
                text: 'تسجيل الدخول باستخدام جوجل',
                color: Colors.white,
                icon: Icons.g_mobiledata,
                onPressed: null,
              ),
            ),

            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 18.0, vertical: 16.0),
              child: CustomAuthContainer(
                text: 'تسجيل الدخول باستخدام فيسبوك',
                color: Color(0xff1877F2),
                icon: Icons.facebook,
                onPressed: null,
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 18.0, vertical: 16.0),
              child: CustomAuthContainer(
                text: 'تسجيل الدخول باستخدام ابل',
                color: Color(0xff1DA1F2),
                icon: Icons.apple,
                onPressed: null,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
