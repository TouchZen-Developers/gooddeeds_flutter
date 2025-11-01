import 'package:freezed_annotation/freezed_annotation.dart';

part 'social_auth_callback_entity.freezed.dart';

@freezed
abstract class SocialAuthCallbackEntity with _$SocialAuthCallbackEntity {
  const factory SocialAuthCallbackEntity({
    required String token,
    required SocialAuthNextStep nextStep,
    Map<String, dynamic>? user,
  }) = _SocialAuthCallbackEntity;
}

enum SocialAuthNextStep {
  completeProfile,
  dashboard;

  static SocialAuthNextStep fromString(String value) {
    switch (value.toLowerCase()) {
      case 'complete_profile':
        return SocialAuthNextStep.completeProfile;
      case 'dashboard':
        return SocialAuthNextStep.dashboard;
      default:
        throw Exception('Unknown next step: $value');
    }
  }

  String toServerValue() {
    switch (this) {
      case SocialAuthNextStep.completeProfile:
        return 'complete_profile';
      case SocialAuthNextStep.dashboard:
        return 'dashboard';
    }
  }
}
