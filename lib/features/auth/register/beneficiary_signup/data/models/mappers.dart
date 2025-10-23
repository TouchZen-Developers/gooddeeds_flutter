import '../../domain/entities/beneficiary_entity.dart';
import '../../domain/entities/beneficiary_signup_response_entity.dart';
import '../../domain/entities/user_entity.dart';
import '../../domain/entities/verify_beneficiary_otp_entity.dart';
import 'beneficiary_dto.dart';
import 'beneficiary_signup_dto.dart';
import 'user_dto.dart';
import 'verify_beneficiary_otp_dto.dart';

extension BeneficiaryDtoMapper on BeneficiaryDto {
  BeneficiaryEntity toEntity() {
    return BeneficiaryEntity(
      id: id,
      familySize: familySize,
      address: address,
      city: city,
      state: state,
      zipCode: zipCode,
      affectedEvent: affectedEvent,
      statement: statement,
      familyPhotoUrl: familyPhotoUrl,
    );
  }
}

extension UserDtoMapper on UserDto {
  UserEntity toEntity() {
    return UserEntity(
      id: id,
      name: name,
      firstName: firstName,
      lastName: lastName,
      email: email,
      phoneNumber: phoneNumber,
      role: role,
    );
  }
}

extension BeneficiarySignupDtoMapper on BeneficiarySignupDto {
  BeneficiarySignupResponseEntity toEntity() {
    return BeneficiarySignupResponseEntity(
      message: message,
    );
  }
}

extension VerifyBeneficiaryOtpDtoMapper on VerifyBeneficiaryOtpDto {
  VerifyBeneficiaryOtpEntity toEntity() {
    return VerifyBeneficiaryOtpEntity(
      message: message,
      user: user.toEntity(),
      beneficiary: beneficiary.toEntity(),
    );
  }
}
