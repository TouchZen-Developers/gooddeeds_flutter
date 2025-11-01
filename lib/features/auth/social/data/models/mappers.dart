import '../../domain/entities/complete_profile_entity.dart';
import '../../domain/entities/social_auth_callback_entity.dart';
import 'complete_profile_dto.dart';
import 'social_auth_callback_dto.dart';

// DTO to Entity mappers
extension SocialAuthCallbackDtoX on SocialAuthCallbackDto {
  SocialAuthCallbackEntity toEntity() {
    return SocialAuthCallbackEntity(
      token: token,
      nextStep: SocialAuthNextStep.fromString(nextStep),
      user: user,
    );
  }
}

extension CompleteProfileResponseDtoX on CompleteProfileResponseDto {
  CompleteProfileResponseEntity toEntity() {
    return CompleteProfileResponseEntity(
      success: success,
      message: message,
      nextStep: nextStep,
      user: user,
    );
  }
}

// Entity to DTO mappers
extension CompleteProfileRequestEntityX on CompleteProfileRequestEntity {
  CompleteProfileRequestDto toDto() {
    return CompleteProfileRequestDto(
      firstName: firstName,
      lastName: lastName,
      phoneNumber: phoneNumber,
      familySize: familySize,
      address: address,
      city: city,
      state: state,
      zipCode: zipCode,
      affectedEvent: affectedEvent,
      statement: statement,
    );
  }
}




