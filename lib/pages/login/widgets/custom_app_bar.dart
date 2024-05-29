import 'package:flutter/material.dart';
import 'package:learnhub/shared/utils/app_colors.dart';
import 'package:learnhub/shared/widgets/body_text.dart';

AppBar buildAppBar() {
  return AppBar(
    bottom: PreferredSize(
      preferredSize: const Size.fromHeight(10),
      child: Container(
        color: Colors.grey.withOpacity(0.5),
        height: 1,
      ),
    ),
    title: const BodyText(
      text: "Login",
      color: AppColors.primaryText,
    ),
  );
}
