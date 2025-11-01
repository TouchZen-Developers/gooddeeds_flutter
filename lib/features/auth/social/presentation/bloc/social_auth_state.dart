part of 'social_auth_bloc.dart';

@freezed
class SocialAuthState with _$SocialAuthState {
  const factory SocialAuthState.initial() = _Initial;
  const factory SocialAuthState.awaitingCallback() = _AwaitingCallback;
  const factory SocialAuthState.loading() = _Loading;
  const factory SocialAuthState.needsProfileCompletion({
    Map<String, dynamic>? user,
  }) = _NeedsProfileCompletion;
  const factory SocialAuthState.needsRoleBasedNavigation({
    required String role,
  }) = _NeedsRoleBasedNavigation;
  const factory SocialAuthState.success() = _Success;
  const factory SocialAuthState.failure(String message) = _Failure;
}



