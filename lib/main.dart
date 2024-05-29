import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:learnhub/pages/login/login.dart';
import 'package:learnhub/pages/welcome/welcome.dart';
import 'package:learnhub/shared/utils/app_theme.dart';

void main() {
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (context, child) {
        return GestureDetector(
          onTap: () {
            FocusScopeNode currentFocus = FocusScope.of(context);
            if (!currentFocus.hasPrimaryFocus) {
              currentFocus.unfocus();
            }
          },
          child: MaterialApp(
            theme: AppTheme.theme,
            debugShowCheckedModeBanner: false,
            initialRoute: "/welcome",
            routes: {
              "/welcome": (context) => WelcomePage(),
              "/login": (context) => const LoginPage()
            },
          ),
        );
      },
    );
  }
}
