import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:learnhub/shared/widgets/custom_text_field.dart';

class FormWidget extends StatelessWidget {
  final TextEditingController? usernameController;
  final TextEditingController? emailController;
  final TextEditingController? passwordController;
  final TextEditingController? confirmPasswordController;
  const FormWidget(
      {super.key, this.usernameController,
      this.emailController,
      this.passwordController,
      this.confirmPasswordController});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(left: 25.w, right: 25.w, bottom: 10.h),
          child: CustomTextfield(
            controller: usernameController,
            label: "Username",
            hintText: "Enter your username",
            icon: Icons.person,
            callback: (String? value) {
              print(value);
            },
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 25.w, right: 25.w, bottom: 10.h),
          child: CustomTextfield(
            controller: emailController,
            label: "Email",
            hintText: "Enter your email",
            icon: Icons.person,
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 25.w, right: 25.w, bottom: 10.h),
          child: CustomTextfield(
            controller: passwordController,
            label: "Password",
            hintText: "Enter your Password",
            icon: Icons.lock,
            obscureText: true,
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 25.w, right: 25.w, bottom: 10.h),
          child: CustomTextfield(
            controller: confirmPasswordController,
            label: "Confirm Password",
            hintText: "Confirm your Password",
            icon: Icons.lock,
            obscureText: true,
          ),
        ),
      ],
    );
  }
}
