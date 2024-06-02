import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:learnhub/models/welcome_item.dart';
import 'package:learnhub/pages/welcome/notifier/welcome_notifier.dart';
import 'package:learnhub/pages/welcome/widgets/app_onboarding_item.dart';
import 'package:learnhub/pages/welcome/widgets/dots.dart';
import 'package:learnhub/shared/utils/app_colors.dart';

class WelcomePage extends ConsumerWidget {
  WelcomePage({super.key});

  final currentIndexProvider = StateProvider<int>((ref) => 0);
  final PageController controller = PageController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentIndex = ref.watch(indexProvider);
    const items = [
      WelcomeItem(
          image: "assets/images/reading.png",
          title: "First See Learning",
          desc: "Forget about of paper all knowledge in one learning"),
      WelcomeItem(
          image: "assets/images/boy.png",
          title: "Connect With Everyone",
          desc:
              "Always keep in touch with your tutor and friends. Let's get connected"),
      WelcomeItem(
          image: "assets/images/man.png",
          title: "Always Fascinated Learning",
          desc:
              "Anywhere, anytime. The time is at your discretion. So study wherever you can")
    ];
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.7,
              child: PageView.builder(
                controller: controller,
                onPageChanged: (value) {
                  ref.read(indexProvider.notifier).setIndex(value);
                },
                itemCount: items.length,
                itemBuilder: (context, index) {
                  return AppOnboardingItem(item: items[index]);
                },
              ),
            ),
            Dots(
              currenIndex: currentIndex,
            ),
            SizedBox(
              height: 15.h,
            ),
            SizedBox(
              width: 140.w,
              child: ElevatedButton(
                onPressed: () {
                  currentIndex != 2
                      ? controller.nextPage(
                          duration: const Duration(milliseconds: 400),
                          curve: Curves.easeInOut)
                      : Navigator.of(context).pushReplacementNamed("/login");
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.primaryElement,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
                child: Text(
                  currentIndex != 2 ? "Next" : "Done",
                  style: const TextStyle(color: Colors.white),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
