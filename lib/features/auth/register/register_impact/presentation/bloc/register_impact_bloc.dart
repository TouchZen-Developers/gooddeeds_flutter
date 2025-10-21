import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gooddeeds/shared/domain/failure.dart';
import 'package:injectable/injectable.dart';

import '../../../beneficiary_signup/domain/usecases/beneficiary_signup_usecase.dart';
import '../../domain/usecases/get_affected_events_usecase.dart';

part 'register_impact_bloc.freezed.dart';
part 'register_impact_event.dart';
part 'register_impact_state.dart';

@Singleton()
class RegisterImpactBloc
    extends Bloc<RegisterImpactEvent, RegisterImpactState> {
  RegisterImpactBloc(this._beneficiarySignupUseCase, this._getAffectedEvents)
      : super(RegisterImpactState.initial()) {
    on<_LoadEvents>(_onLoadEvents);
    on<_EventChanged>(
      (e, emit) {
        final newState =
            state.copyWith(affectedEvent: e.value, completed: false);
        emit(newState);
        // Real-time validation
        _validateAndEmit(newState, emit);
      },
    );
    on<_StatementChanged>(
      (e, emit) {
        final newState = state.copyWith(statement: e.value, completed: false);
        emit(newState);
        // Real-time validation
        _validateAndEmit(newState, emit);
      },
    );
    on<_ShowErrors>((e, emit) => emit(state.copyWith(showErrors: true)));
    on<_Submitted>(_onSubmitted);
  }

  final BeneficiarySignupUseCase _beneficiarySignupUseCase;
  final GetAffectedEventsUseCase _getAffectedEvents;

  Future<void> _onLoadEvents(
    _LoadEvents e,
    Emitter<RegisterImpactState> emit,
  ) async {
    emit(state.copyWith(isLoadingEvents: true, eventsError: null));
    final res = await _getAffectedEvents();
    res.fold(
      (Failure l) => emit(
        state.copyWith(
          isLoadingEvents: false,
          eventsError: l.message,
        ),
      ),
      (items) => emit(
        state.copyWith(
          isLoadingEvents: false,
          events: items,
        ),
      ),
    );
  }

  Future<void> _onSubmitted(
    _Submitted e,
    Emitter<RegisterImpactState> emit,
  ) async {
    if (!_isValid(state)) {
      emit(state.copyWith(showErrors: true));
      return;
    }

    emit(state.copyWith(isSubmitting: true));

    try {
      final result = await _beneficiarySignupUseCase(
        firstName: e.firstName,
        lastName: e.lastName,
        email: e.email,
        phoneNumber: e.phoneNumber,
        password: e.password,
        passwordConfirmation: e.passwordConfirmation,
        familySize: e.familySize,
        address: e.address,
        city: e.city,
        state: e.state,
        zipCode: e.zipCode,
        affectedEvent: state.affectedEvent!,
        statement: state.statement,
        familyPhotoPath: e.familyPhotoPath,
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

  bool _isValid(RegisterImpactState s) =>
      (s.affectedEvent?.isNotEmpty ?? false) && s.statement.trim().length >= 10;

  void _validateAndEmit(
    RegisterImpactState state,
    Emitter<RegisterImpactState> emit,
  ) {
    final affectedEventValid = state.affectedEvent?.isNotEmpty ?? false;
    final statementValid = state.statement.trim().length >= 10;

    // Show errors immediately if any field is invalid
    if (!affectedEventValid || !statementValid) {
      emit(state.copyWith(showErrors: true));
    } else {
      // Hide errors if all fields are valid
      emit(state.copyWith(showErrors: false));
    }
  }
}
