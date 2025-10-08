part of 'register_family_photo_bloc.dart';

@freezed
abstract class RegisterFamilyPhotoState with _$RegisterFamilyPhotoState {
  const factory RegisterFamilyPhotoState.idle() = _Idle;
  const factory RegisterFamilyPhotoState.uploading(double progress) =
      _Uploading;
  const factory RegisterFamilyPhotoState.ready(File file) = _Ready;
  const factory RegisterFamilyPhotoState.deleting() = _Deleting;
  const factory RegisterFamilyPhotoState.error(String message) = _Error;
}
