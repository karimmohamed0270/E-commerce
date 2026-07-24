import 'package:e_commerce/core/widgets/custom_btn.dart';
import 'package:e_commerce/features/auth/presentations/views/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SignUpBody extends StatefulWidget {
  const SignUpBody({super.key});

  @override
  State<SignUpBody> createState() => _SignUpBodyState();
}

class _SignUpBodyState extends State<SignUpBody> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const CustomTextField(
            hintText: "اسم المستخدم",
            inputtype: TextInputType.text,
            icon: Icons.person,
          ),
          const CustomTextField(
            hintText: "الايميل الالكترونى",
            inputtype: TextInputType.emailAddress,
            icon: Icons.email,
          ),
          const CustomTextField(
            hintText: 'كلمة المرور',
            inputtype: TextInputType.visiblePassword,
            icon: Icons.lock,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const Text("أوافق على الشروط والأحكام"),
                Checkbox(
                  value: isChecked,
                  activeColor: const Color(0xff53B175), // green background
                  checkColor: Colors.white, // white check icon
                  onChanged: (value) {
                    setState(() {
                      isChecked = value!;
                    });
                  },
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: CustomButton(
              btnColor: Color(0xff53B175),
              btnText: "انشاء حساب",
              textColor: Colors.white,
            ),
          ),

          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: () {
                  GoRouter.of(context).pushReplacement('/login');
                },
                child: const Text("تسجيل الدخول"),
              ),
              const Text("لديك حساب؟"),
            ],
          ),
        ],
      ),
    );
  }
}
