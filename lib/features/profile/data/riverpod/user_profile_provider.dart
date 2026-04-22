import 'package:nexus/features/profile/data/models/user_profile.dart';
import 'package:nexus/features/auth/services/auth_service.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'user_profile_provider.g.dart';

@riverpod
FutureOr<UserProfile?> userProfile(Ref ref) async {
  return AuthService.getUserProfile();
}
