import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:learnhub/models/welcome_item.dart';
import 'package:learnhub/shared/widgets/body_text.dart';
import 'package:learnhub/shared/widgets/title_text.dart';

class AppOnboardingItem extends StatelessWidget {
  final WelcomeItem item;
  const AppOnboardingItem({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(item.image),
        SizedBox(
          height: 10.h,
        ),
        Titletext(text: item.title),
        SizedBox(
          height: 10.h,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.h),
          child: BodyText(text: item.desc),
        )
      ],
    );
  }
}
