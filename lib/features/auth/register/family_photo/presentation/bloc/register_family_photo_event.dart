part of 'register_family_photo_bloc.dart';

@freezed
class RegisterFamilyPhotoEvent with _$RegisterFamilyPhotoEvent {
  const factory RegisterFamilyPhotoEvent.pickFromGallery() = _PickFromGallery;

  const factory RegisterFamilyPhotoEvent.pickFromCamera() = _PickFromCamera;

  const factory RegisterFamilyPhotoEvent.startUpload(File file) = _StartUpload;

  const factory RegisterFamilyPhotoEvent.delete() = _Delete;

  const factory RegisterFamilyPhotoEvent.needPhotoError(String message) =
      _NeedPhotoError;

  const factory RegisterFamilyPhotoEvent.clearError() = _ClearError;
}
