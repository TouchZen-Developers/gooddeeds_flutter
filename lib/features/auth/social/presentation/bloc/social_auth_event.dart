part of 'social_auth_bloc.dart';

@freezed
class SocialAuthEvent with _$SocialAuthEvent {
  const factory SocialAuthEvent.initiateGoogleAuth() = _InitiateGoogleAuth;
  const factory SocialAuthEvent.handleCallback({
    required String token,
    required String nextStep,
    Map<String, dynamic>? user,
  }) = _HandleCallback;
  const factory SocialAuthEvent.completeProfile({
    required CompleteProfileRequestEntity profileData,
  }) = _CompleteProfile;
  const factory SocialAuthEvent.resetState() = _ResetState;
}




