import 'package:flutter/material.dart';
import 'package:gas_employer/features/auth/persenetiton/views/login_view.dart';
import 'package:gas_employer/features/auth/persenetiton/views/vreify_login.dart';
import 'package:go_router/go_router.dart';

class AppRoutesNamed {
  static const String initial = "/intial";
  static const String login = "/login";
  static const String verify = "/verify";
  static const String home = "/home";
}

GoRouter getRoute() {
  return GoRouter(
    initialLocation: AppRoutesNamed.login,
    routes: [
      GoRoute(
        path: AppRoutesNamed.login,
        builder: (context, state) => LoginView(),
      ),
      GoRoute(
        path: AppRoutesNamed.verify,

        builder: (context, state) {
          final id = state.extra as String;
          return VerifyLogin(verificationId: id);
        },
      ),
      GoRoute(
        path: AppRoutesNamed.home,
        builder: (context, state) =>
            Scaffold(body: Center(child: Text("Home"))),
      ),
    ],
  );
}
