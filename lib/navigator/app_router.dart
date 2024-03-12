import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:grocery_shopping_app/screens/home_screen/home_screen.dart';
import 'package:grocery_shopping_app/screens/intro_screen/intro_screen.dart';

class AppRouter {
  late final GoRouter router = GoRouter(
    routes: <GoRoute>[
      GoRoute(
        name: 'intro',
        path: '/intro',
        builder: (BuildContext context, GoRouterState state) {
          return const IntroScreen();
        },
      ),
      GoRoute(
        name: 'home',
        path: '/',
        builder: (BuildContext context, GoRouterState state) {
          return const HomeScreen();
        },
      ),
    ],
  );
}
