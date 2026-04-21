import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:interactive_learn/core/landing/screens/home_screen.dart';
import 'package:interactive_learn/features/leaderboard/presentation/screens/leaderboard_screen.dart';
import 'package:interactive_learn/features/profile/presentation/screens/profile_screen.dart';
import 'package:interactive_learn/features/progress/presentation/screens/progress_screen.dart';
import 'package:interactive_learn/features/search/presentation/screens/search_screen.dart';

part 'shell_routes.g.dart';

@TypedGoRoute<HomeTabRoute>(path: '/')
class HomeTabRoute extends GoRouteData with $HomeTabRoute {
  const HomeTabRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const HomeScreen();
  }
}

@TypedGoRoute<SearchTabRoute>(path: '/search')
class SearchTabRoute extends GoRouteData with $SearchTabRoute {
  const SearchTabRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const SearchScreen();
  }
}

@TypedGoRoute<LeaderboardTabRoute>(path: '/leaderboard')
class LeaderboardTabRoute extends GoRouteData with $LeaderboardTabRoute {
  const LeaderboardTabRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const LeaderboardScreen();
  }
}

@TypedGoRoute<ProgressTabRoute>(path: '/progress')
class ProgressTabRoute extends GoRouteData with $ProgressTabRoute {
  const ProgressTabRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const ProgressScreen();
  }
}

@TypedGoRoute<ProfileTabRoute>(path: '/profile')
class ProfileTabRoute extends GoRouteData with $ProfileTabRoute {
  const ProfileTabRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const ProfileScreen();
  }
}

typedef HomeRoute = HomeTabRoute;
