import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:learnhub/models/signup.dart';
import 'package:learnhub/pages/auth/login/widgets/custom_app_bar.dart';
import 'package:learnhub/pages/auth/controllers/sign_up_controller.dart';
import 'package:learnhub/pages/auth/signup/widgets/form_widget.dart';
import 'package:learnhub/shared/notifiers/app_loader.dart';
import 'package:learnhub/shared/utils/app_colors.dart';
import 'package:learnhub/shared/widgets/custom_button.dart';
import 'package:learnhub/shared/widgets/subtitle_text.dart';

class SignUpPage extends ConsumerStatefulWidget {
  const SignUpPage({super.key});

  @override
  ConsumerState<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends ConsumerState<SignUpPage> {
  TextEditingController? _usernameController;
  TextEditingController? _emailController;
  TextEditingController? _passwordController;
  TextEditingController? _confirmPasswordController;
  @override
  void initState() {
    _usernameController = TextEditingController();
    _passwordController = TextEditingController();
    _emailController = TextEditingController();
    _confirmPasswordController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _usernameController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final apploader = ref.watch(appLoaderProvider);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(text: "Signup"),
      body: SafeArea(
        child: apploader
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 30.h,
                    ),
                    const Center(
                      child: SubtitleText(
                          text: "Enter your details below & free sign up"),
                    ),
                    SizedBox(
                      height: 30.h,
                    ),
                    FormWidget(
                      usernameController: _usernameController,
                      emailController: _emailController,
                      passwordController: _passwordController,
                      confirmPasswordController: _confirmPasswordController,
                    ),
                    Container(
                      margin:
                          EdgeInsets.only(left: 25.w, right: 25.w, top: 10.h),
                      child: Text(
                        "By creating an account you agree to our terms & conditions.",
                        style: TextStyle(
                            fontSize: 12.sp,
                            color: AppColors.primaryThirdElementText),
                      ),
                    ),
                    SizedBox(
                      height: 30.h,
                    ),
                    Center(
                      child: CustomButton(
                        title: "Signup",
                        callBack: () {
                          ref.read(authControllerProvider).handleSignup(
                              context: context,
                              details: Signup(
                                  username: _usernameController!.text,
                                  email: _emailController!.text,
                                  password: _passwordController!.text,
                                  confirmPassword:
                                      _confirmPasswordController!.text));
                        },
                        isPrimary: true,
                      ),
                    ),
                  ],
                ),
              ),
      ),
    );
  }
}
