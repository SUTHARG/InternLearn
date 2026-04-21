import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:nexus/features/profile/presentation/screens/avatar_picker_screen.dart';
import 'package:nexus/features/profile/presentation/screens/edit_profile_screen.dart';

part 'profile_routes.g.dart';

@TypedGoRoute<EditProfileRoute>(path: '/profile/edit')
class EditProfileRoute extends GoRouteData with $EditProfileRoute {
  const EditProfileRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const EditProfileScreen();
  }
}

@TypedGoRoute<AvatarPickerRoute>(path: '/profile/avatar')
class AvatarPickerRoute extends GoRouteData with $AvatarPickerRoute {
  const AvatarPickerRoute({required this.currentSeed});

  final String currentSeed;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return AvatarPickerScreen(currentSeed: currentSeed);
  }
}
