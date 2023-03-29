import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_fishbone/screens/loginScreen.dart';
import 'package:flutter_fishbone/configs/themeConfig.dart';
import 'package:go_router/go_router.dart';

//This is the entry point to your application, which is also the root of the application
//As a best practice, do not declare any sort of UI here,
//only application-level operations should be defined here.

void main() {
  runApp(const MyApp());
}

// GoRouter Configuration
// All your pages to be declared here
final _router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const LoginScreen(),
    ),
  ],
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (context, child) {
        return MaterialApp.router(
          theme: ThemeConfig.getTheme(),
          darkTheme: ThemeConfig.getDarkTheme(),
          routerConfig: _router,
        );
      },
    );
  }
}
