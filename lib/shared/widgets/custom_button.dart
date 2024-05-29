import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:learnhub/shared/utils/app_colors.dart';

class CustomButton extends StatelessWidget {
  final String? title;
  final bool isPrimary;
  final VoidCallback? callBack;

  const CustomButton(
      {super.key, this.title, this.isPrimary = false, this.callBack});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300.w,
      height: 35.h,
      child: ElevatedButton(
        onPressed: callBack,
        style: ElevatedButton.styleFrom(
          elevation: 0,
          backgroundColor: isPrimary ? AppColors.primaryElement : Colors.white,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
              side: BorderSide(color: AppColors.primaryFourthElementText)),
        ),
        child: Text(
          title!,
          style: TextStyle(color: isPrimary ? Colors.white : Colors.black),
        ),
      ),
    );
  }
}
