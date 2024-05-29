import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:learnhub/shared/utils/app_colors.dart';

class SubtitleText extends StatelessWidget {
  final String text;
  final FontWeight weight;
  final Color color;
  const SubtitleText(
      {super.key,
      required this.text,
      this.weight = FontWeight.normal,
      this.color = AppColors.primaryThirdElementText});
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontWeight: weight,
        fontSize: 14.sp,
        color: color,
      ),
      textAlign: TextAlign.center,
    );
  }
}
