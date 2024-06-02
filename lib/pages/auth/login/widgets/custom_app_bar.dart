import 'package:flutter/material.dart';
import 'package:learnhub/shared/utils/app_colors.dart';
import 'package:learnhub/shared/widgets/body_text.dart';

class CustomAppBar extends AppBar {
  final String text;
  CustomAppBar({super.key, this.text = "LearnHub"})
      : super(title: BodyText(text: text));
  @override
  PreferredSizeWidget? get bottom => PreferredSize(
        preferredSize: const Size.fromHeight(10),
        child: Container(
          color: Colors.grey.withOpacity(0.5),
          height: 1,
        ),
      );
}

AppBar buildAppBar({String title = "Learnhub"}) {
  return AppBar(
    bottom: PreferredSize(
      preferredSize: const Size.fromHeight(10),
      child: Container(
        color: Colors.grey.withOpacity(0.5),
        height: 1,
      ),
    ),
    title: BodyText(
      text: title,
      color: AppColors.primaryText,
    ),
  );
}
