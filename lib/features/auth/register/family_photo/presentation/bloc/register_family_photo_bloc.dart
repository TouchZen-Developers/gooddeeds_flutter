import 'dart:io';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';

part 'register_family_photo_bloc.freezed.dart';
part 'register_family_photo_event.dart';
part 'register_family_photo_state.dart';

@Singleton()
class RegisterFamilyPhotoBloc
    extends Bloc<RegisterFamilyPhotoEvent, RegisterFamilyPhotoState> {
  RegisterFamilyPhotoBloc({ImagePicker? picker})
      : _picker = picker ?? ImagePicker(),
        super(const RegisterFamilyPhotoState.idle()) {
    on<_PickFromGallery>(_onPickFromGallery);
    on<_PickFromCamera>(_onPickFromCamera);
    on<_StartUpload>(_onStartUpload);
    on<_Delete>(_onDelete);
    on<_NeedPhotoError>(_onNeedPhotoError);
    on<_ClearError>(_onClearError);
  }

  final ImagePicker _picker;

  @factoryMethod
  static RegisterFamilyPhotoBloc create() =>
      RegisterFamilyPhotoBloc(picker: ImagePicker());

  Future<void> _onPickFromGallery(
    _PickFromGallery e,
    Emitter<RegisterFamilyPhotoState> emit,
  ) async {
    final x =
        await _picker.pickImage(source: ImageSource.gallery, imageQuality: 85);
    if (x != null) add(RegisterFamilyPhotoEvent.startUpload(File(x.path)));
  }

  Future<void> _onPickFromCamera(
    _PickFromCamera e,
    Emitter<RegisterFamilyPhotoState> emit,
  ) async {
    final x =
        await _picker.pickImage(source: ImageSource.camera, imageQuality: 85);
    if (x != null) add(RegisterFamilyPhotoEvent.startUpload(File(x.path)));
  }

  Future<void> _onStartUpload(
    _StartUpload e,
    Emitter<RegisterFamilyPhotoState> emit,
  ) async {
    emit(const RegisterFamilyPhotoState.uploading(0));
    const steps = 18;
    for (var i = 1; i <= steps; i++) {
      await Future.delayed(const Duration(milliseconds: 90));
      emit(RegisterFamilyPhotoState.uploading(i / steps));
    }
    emit(RegisterFamilyPhotoState.ready(e.file));
  }

  Future<void> _onDelete(
    _Delete e,
    Emitter<RegisterFamilyPhotoState> emit,
  ) async {
    emit(const RegisterFamilyPhotoState.deleting());
    await Future.delayed(const Duration(milliseconds: 250));
    emit(const RegisterFamilyPhotoState.idle());
  }

  void _onNeedPhotoError(
    _NeedPhotoError e,
    Emitter<RegisterFamilyPhotoState> emit,
  ) {
    final hasPhoto = state.maybeWhen(ready: (_) => true, orElse: () => false);
    if (!hasPhoto) {
      emit(RegisterFamilyPhotoState.error(e.message));
    }
  }

  void _onClearError(
    _ClearError e,
    Emitter<RegisterFamilyPhotoState> emit,
  ) {
    state.maybeWhen(
      error: (_) => emit(const RegisterFamilyPhotoState.idle()),
      orElse: () {},
    );
  }
}
