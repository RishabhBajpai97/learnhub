import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:learnhub/firebase_options.dart';
import 'package:learnhub/pages/auth/login/login.dart';
import 'package:learnhub/pages/auth/signup/signup.dart';
import 'package:learnhub/pages/welcome/welcome.dart';
import 'package:learnhub/shared/utils/app_theme.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
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
            FocusManager.instance.primaryFocus?.unfocus();
          },
          child: MaterialApp(
            theme: AppTheme.theme,
            debugShowCheckedModeBanner: false,
            initialRoute: "/welcome",
            routes: <String, WidgetBuilder>{
              "/welcome": (context) => WelcomePage(),
              "/login": (context) => const LoginPage(),
              "/signup": (context) => const SignUpPage(),
            },
          ),
        );
      },
    );
  }
}
