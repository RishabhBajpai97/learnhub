import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:learnhub/shared/utils/app_colors.dart';

class Dots extends StatelessWidget {
  final int currenIndex;
  const Dots({super.key, this.currenIndex = 0});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        AnimatedContainer(
          duration: const Duration(milliseconds: 400),
          width: 10.w,
          height: 10.h,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: currenIndex == 0 ? AppColors.primaryElement : Colors.grey,
          ),
        ),
        SizedBox(
          width: 5.w,
        ),
        AnimatedContainer(
          duration: const Duration(milliseconds: 400),
          width: 10.w,
          height: 10.h,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: currenIndex == 1 ? AppColors.primaryElement : Colors.grey,
          ),
        ),
        SizedBox(width: 5.w),
        AnimatedContainer(
          duration: const Duration(milliseconds: 400),
          width: 10.w,
          height: 10.h,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: currenIndex == 2 ? AppColors.primaryElement : Colors.grey,
          ),
        ),
      ],
    );
  }
}
