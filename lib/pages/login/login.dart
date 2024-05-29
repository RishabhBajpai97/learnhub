import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:learnhub/pages/login/widgets/custom_app_bar.dart';
import 'package:learnhub/pages/login/widgets/social_logins.dart';
import 'package:learnhub/shared/widgets/custom_button.dart';
import 'package:learnhub/shared/widgets/custom_text_field.dart';
import 'package:learnhub/shared/widgets/subtitle_text.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  void _handleForgetPassword() {
    print("tapped");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: buildAppBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SocialLogins(),
              const Center(
                child: SubtitleText(text: "or use your email account to login"),
              ),
              SizedBox(
                height: 50.h,
              ),
              Container(
                margin: EdgeInsets.only(left: 25.w, right: 25.w, bottom: 20.h),
                child: const CustomTextfield(
                  label: "Email",
                  hintText: "Enter your Email",
                  icon: Icons.person,
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 25.w, right: 25.w, bottom: 10.h),
                child: const CustomTextfield(
                  label: "Password",
                  hintText: "Enter your Password",
                  icon: Icons.lock,
                  obscureText: true,
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                  left: 25.w,
                  right: 20.w,
                ),
                child: GestureDetector(
                  onTap: _handleForgetPassword,
                  child: const Text(
                    "Forget Password?",
                    style: TextStyle(
                        decoration: TextDecoration.underline,
                        decorationColor: Colors.black,
                        color: Colors.black),
                  ),
                ),
              ),
              SizedBox(
                height: 50.h,
              ),
              Center(
                child: CustomButton(
                  title: "Login",
                  callBack: _handleForgetPassword,
                  isPrimary: true,
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Center(
                child: CustomButton(
                  title: "Sign Up",
                  callBack: _handleForgetPassword,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
