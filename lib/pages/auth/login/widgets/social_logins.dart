import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SocialLogins extends StatelessWidget {
  const SocialLogins({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 40.h, bottom: 20.h, left: 60.w, right: 60.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _socialIconButton(image: "assets/icons/google.png"),
          _socialIconButton(image: "assets/icons/apple.png"),
          _socialIconButton(image: "assets/icons/facebook.png"),
        ],
      ),
    );
  }
}

_socialIconButton({String image = ""}) {
  return GestureDetector(
    child: Container(
      width: 40.w,
      height: 40.h,
      child: Image.asset(image),
    ),
  );
}
