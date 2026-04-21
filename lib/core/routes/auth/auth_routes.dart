import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:nexus/features/auth/presentation/screens/login_screen.dart';
import 'package:nexus/features/auth/presentation/screens/signup_screen.dart';

part 'auth_routes.g.dart';

@TypedGoRoute<LoginRoute>(path: '/login')
class LoginRoute extends GoRouteData with $LoginRoute {
  const LoginRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const LoginScreen();
  }
}

@TypedGoRoute<SignupRoute>(path: '/signup')
class SignupRoute extends GoRouteData with $SignupRoute {
  const SignupRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const SignupScreen();
  }
}
