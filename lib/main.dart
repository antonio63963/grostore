import 'package:flutter/material.dart';
import 'package:grocery_shopping_app/comon/constants.dart';
import 'package:grocery_shopping_app/navigator/app_router.dart';
import 'package:grocery_shopping_app/screens/intro_screen/intro_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        appBarTheme: AppBarTheme(foregroundColor: MyColors.white),
        useMaterial3: true,
      ),
      routerConfig: AppRouter().router,
      // home: const IntroScreen(),
    );
  }
}

