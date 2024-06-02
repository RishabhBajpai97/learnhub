import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:learnhub/shared/utils/app_colors.dart';
import 'package:learnhub/shared/widgets/subtitle_text.dart';

class CustomTextfield extends StatelessWidget {
  final String? label;
  final IconData? icon;
  final String? hintText;
  final bool obscureText;
  final void Function(String?)? callback;
  final TextEditingController? controller;
  const CustomTextfield(
      {super.key,
      this.label,
      this.icon,
      this.hintText,
      this.obscureText = false,
      this.callback,
      this.controller});
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SubtitleText(text: label ?? ""),
        SizedBox(
          height: 5.h,
        ),
        TextField(
          obscureText: obscureText,
          controller: controller,
          cursorColor: AppColors.primaryThirdElementText,
          decoration: InputDecoration(
            hintText: hintText,
            prefixIcon: Icon(
              icon ?? Icons.place,
              color: Colors.black,
            ),
            hintStyle: TextStyle(
                fontSize: 12.sp, color: AppColors.primaryThirdElementText),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide:
                    const BorderSide(color: AppColors.primaryThirdElementText)),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide:
                  const BorderSide(color: AppColors.primaryThirdElementText),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide:
                  const BorderSide(color: AppColors.primaryThirdElementText),
            ),
          ),
          onChanged: callback,
        )
      ],
    );
  }
}
