import 'package:e_commerce/core/widgets/custom_btn.dart';
import 'package:e_commerce/features/auth/presentations/views/widgets/custom_auth_container.dart';
import 'package:e_commerce/features/auth/presentations/views/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: SingleChildScrollView(
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

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(onPressed: null, child: Text('نسيت كلمة المرور؟')),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 18.0, vertical: 8.0),
              child: CustomButton(
                btnText: 'تسجيل الدخول',
                btnColor: Color(0xff53B175),
                textColor: Colors.white,
                onPressed: null,
              ),
            ),

            Padding(
              padding: EdgeInsets.only(top: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('ليس لديك حساب؟'),
                  TextButton(onPressed: null, child: Text('انشاء حساب')),
                ],
              ),
            ),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 18.0, vertical: 16.0),
              child: CustomAuthContainer(
                text: 'تسجيل الدخول باستخدام جوجل',
                color: Colors.white,
                icon: Icons.g_mobiledata,
              ),
            ),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 18.0, vertical: 16.0),
              child: CustomAuthContainer(
                text: 'تسجيل الدخول باستخدام فيسبوك',
                color: Color(0xff1877F2),
                icon: Icons.facebook,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 18.0, vertical: 16.0),
              child: CustomAuthContainer(
                text: 'تسجيل الدخول باستخدام ابل',
                color: Color(0xff1DA1F2),
                icon: Icons.apple,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
