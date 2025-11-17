import 'package:go_router/go_router.dart';

import '../../main.dart';

class AppRoutesNamed {
  static const String initial = "/intial";
}

GoRouter getRoute() {
  return GoRouter(
    initialLocation: AppRoutesNamed.initial,
    routes: [
      GoRoute(
        path: AppRoutesNamed.initial,
        builder: (context, state) => Demo(),
      ),
    ],
  );
}
