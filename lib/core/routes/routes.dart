import 'package:gas_employer/features/auth/persenetiton/views/login_view.dart';
import 'package:go_router/go_router.dart';

class AppRoutesNamed {
  static const String initial = "/intial";
  static const String login = "/login";
}

GoRouter getRoute() {
  return GoRouter(
    initialLocation: AppRoutesNamed.login,
    routes: [
      GoRoute(
        path: AppRoutesNamed.login,
        builder: (context, state) => LoginView(),
      ),
    ],
  );
}
