import 'dart:collection';

import 'package:cheers/login/view/login_screen.dart';
import 'package:cheers/main.dart';
import 'package:cheers/register/view/register_screen.dart';
import 'package:go_router/go_router.dart';

enum AppRoutes { home, login, register }

final LinkedHashMap<AppRoutes, String> appRoutes = LinkedHashMap.fromEntries(
  const [
    MapEntry(AppRoutes.home, 'home'),
    MapEntry(AppRoutes.login, 'login'),
    MapEntry(AppRoutes.register, 'register'),
  ],
);

final router = GoRouter(
  routes: [
    GoRoute(
      name: appRoutes[AppRoutes.home],
      path: '/',
      builder: (context, state) =>
          const MyHomePage(title: 'Flutter Demo Home Page'),
    ),
    GoRoute(
      name: appRoutes[AppRoutes.login],
      path: '/login',
      builder: (context, state) => const LoginScreen(),
    ),
    GoRoute(
      name: appRoutes[AppRoutes.register],
      path: '/register',
      builder: (context, state) => const RegisterScreen(),
    ),
  ],
);
