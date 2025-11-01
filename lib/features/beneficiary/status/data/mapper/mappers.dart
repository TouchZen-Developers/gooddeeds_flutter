import '../models/beneficiary_status_dto.dart';
import '../../domain/entities/beneficiary_status_entity.dart';

extension BeneficiaryStatusDtoX on BeneficiaryStatusDto {
  BeneficiaryStatusEntity toEntity() {
    return BeneficiaryStatusEntity(
      success: success,
      data: data.toEntity(),
    );
  }
}

extension BeneficiaryStatusDataDtoX on BeneficiaryStatusDataDto {
  BeneficiaryStatusDataEntity toEntity() {
    return BeneficiaryStatusDataEntity(
      user: user.toEntity(),
      beneficiary: beneficiary.toEntity(),
      message: message,
    );
  }
}

extension UserDtoX on UserDto {
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

extension BeneficiaryDtoX on BeneficiaryDto {
  BeneficiaryEntity toEntity() {
    return BeneficiaryEntity(
      id: id,
      status: _mapStatus(status),
      familySize: familySize,
      address: address,
      city: city,
      state: state,
      zipCode: zipCode,
      affectedEvent: affectedEvent,
      statement: statement,
      familyPhotoUrl: familyPhotoUrl,
      submittedAt: submittedAt,
      processedAt: processedAt,
    );
  }

  BeneficiaryStatus _mapStatus(String status) {
    switch (status.toLowerCase()) {
      case 'pending':
        return BeneficiaryStatus.pending;
      case 'approved':
        return BeneficiaryStatus.approved;
      case 'rejected':
        return BeneficiaryStatus.rejected;
      default:
        return BeneficiaryStatus.pending;
    }
  }
}
