import 'package:go_router/go_router.dart';
import 'package:movies_club/features/auth/ui/auth_page.dart';

class RouterSettings {
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/auth',
        name: 'auth',
        builder: (context, state) => const AuthPage(),
      ),
    ],
    initialLocation: '/auth',
  );
}
