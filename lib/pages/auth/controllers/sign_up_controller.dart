import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:learnhub/models/signup.dart';
import 'package:learnhub/shared/widgets/custom_snack_bar.dart';

class AuthController {
  AuthController();

  void handleSignup({Signup? details, BuildContext? context}) {
    if (details!.confirmPassword.isEmpty ||
        details.email.isEmpty ||
        details.password.isEmpty ||
        details.username.isEmpty) {
      showSnackbar(context: context, title: "Please enter complete details");
      return;
    }
    if (details.password != details.confirmPassword) {
      showSnackbar(context: context, title: "Passwords do not match");
      return;
    }
    showSnackbar(context: context, title: "Thank You! Details are complete");
  }
}

final authControllerProvider = Provider((_) => AuthController());
