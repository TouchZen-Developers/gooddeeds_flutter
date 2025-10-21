import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../beneficiary_signup/domain/usecases/beneficiary_signup_usecase.dart';

part 'parent_registration_bloc.freezed.dart';
part 'parent_registration_event.dart';
part 'parent_registration_state.dart';

@Singleton()
class ParentRegistrationBloc
    extends Bloc<ParentRegistrationEvent, ParentRegistrationState> {
  ParentRegistrationBloc(this._beneficiarySignupUseCase)
      : super(ParentRegistrationState.initial()) {
    on<_SetEmailData>(_onSetEmailData);
    on<_SetPersonalInfo>(_onSetPersonalInfo);
    on<_SetContactInfo>(_onSetContactInfo);
    on<_SetFamilyPhoto>(_onSetFamilyPhoto);
    on<_SetImpactInfo>(_onSetImpactInfo);
    on<_SubmitRegistration>(_onSubmitRegistration);
    on<_ClearData>(_onClearData);
  }

  final BeneficiarySignupUseCase _beneficiarySignupUseCase;

  void _onSetEmailData(
    _SetEmailData event,
    Emitter<ParentRegistrationState> emit,
  ) {
    emit(
      state.copyWith(
        email: event.email,
        password: event.password,
        passwordConfirmation: event.passwordConfirmation,
      ),
    );
  }

  void _onSetPersonalInfo(
    _SetPersonalInfo event,
    Emitter<ParentRegistrationState> emit,
  ) {
    emit(
      state.copyWith(
        firstName: event.firstName,
        lastName: event.lastName,
        familySize: event.familySize,
      ),
    );
  }

  void _onSetContactInfo(
    _SetContactInfo event,
    Emitter<ParentRegistrationState> emit,
  ) {
    emit(
      state.copyWith(
        phoneNumber: event.phoneNumber,
        address: event.address,
        city: event.city,
        state: event.state,
        zipCode: event.zipCode,
      ),
    );
  }

  void _onSetFamilyPhoto(
    _SetFamilyPhoto event,
    Emitter<ParentRegistrationState> emit,
  ) {
    emit(state.copyWith(familyPhotoPath: event.photoPath));
  }

  void _onSetImpactInfo(
    _SetImpactInfo event,
    Emitter<ParentRegistrationState> emit,
  ) {
    emit(
      state.copyWith(
        affectedEvent: event.affectedEvent,
        statement: event.statement,
      ),
    );
  }

  Future<void> _onSubmitRegistration(
    _SubmitRegistration event,
    Emitter<ParentRegistrationState> emit,
  ) async {
    // Validate all required data
    final validationResult = _validateAllData(state);
    if (!validationResult.isValid) {
      emit(
        state.copyWith(
          isSubmitting: false,
          success: false,
          apiError: validationResult.errorMessage,
        ),
      );
      return;
    }

    emit(state.copyWith(isSubmitting: true));

    try {
      final result = await _beneficiarySignupUseCase(
        firstName: state.firstName,
        lastName: state.lastName,
        email: state.email,
        phoneNumber: state.phoneNumber,
        password: state.password,
        passwordConfirmation: state.passwordConfirmation,
        familySize: state.familySize,
        address: state.address,
        city: state.city,
        state: state.state,
        zipCode: state.zipCode,
        affectedEvent: state.affectedEvent,
        statement: state.statement,
        familyPhotoPath: state.familyPhotoPath,
      );

      result.fold(
        (failure) => emit(
          state.copyWith(
            isSubmitting: false,
            success: false,
            apiError: failure.message,
          ),
        ),
        (data) => emit(
          state.copyWith(
            isSubmitting: false,
            success: true,
          ),
        ),
      );
    } catch (e) {
      emit(
        state.copyWith(
          isSubmitting: false,
          success: false,
          apiError: 'An unexpected error occurred',
        ),
      );
    }
  }

  void _onClearData(_ClearData event, Emitter<ParentRegistrationState> emit) {
    emit(ParentRegistrationState.initial());
  }

  ValidationResult _validateAllData(ParentRegistrationState state) {
    final List<String> missingFields = [];

    if (state.email.isEmpty) missingFields.add('Email');
    if (state.password.isEmpty) missingFields.add('Password');
    if (state.passwordConfirmation.isEmpty) {
      missingFields.add('Password Confirmation');
    }
    if (state.firstName.isEmpty) missingFields.add('First Name');
    if (state.lastName.isEmpty) missingFields.add('Last Name');
    if (state.familySize.isEmpty) missingFields.add('Family Size');
    if (state.phoneNumber.isEmpty) missingFields.add('Phone Number');
    if (state.address.isEmpty) missingFields.add('Address');
    if (state.city.isEmpty) missingFields.add('City');
    if (state.state.isEmpty) missingFields.add('State');
    if (state.zipCode.isEmpty) missingFields.add('Zip Code');
    if (state.affectedEvent.isEmpty) missingFields.add('Affected Event');
    if (state.statement.isEmpty) missingFields.add('Statement');
    if (state.familyPhotoPath == null || state.familyPhotoPath!.isEmpty) {
      missingFields.add('Family Photo');
    }

    if (missingFields.isEmpty) {
      return ValidationResult(isValid: true, errorMessage: '');
    }

    final errorMessage =
        'Please complete the following required fields:\n• ${missingFields.join('\n• ')}';
    return ValidationResult(isValid: false, errorMessage: errorMessage);
  }
}

class ValidationResult {
  ValidationResult({required this.isValid, required this.errorMessage});

  final bool isValid;
  final String errorMessage;
}
