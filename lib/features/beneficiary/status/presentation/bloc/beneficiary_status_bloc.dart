import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gooddeeds/shared/domain/failure.dart';
import 'package:injectable/injectable.dart';

import '../../domain/entities/beneficiary_status_entity.dart';
import '../../domain/usecases/get_beneficiary_status_usecase.dart';

part 'beneficiary_status_bloc.freezed.dart';
part 'beneficiary_status_event.dart';
part 'beneficiary_status_state.dart';

@Injectable()
class BeneficiaryStatusBloc
    extends Bloc<BeneficiaryStatusEvent, BeneficiaryStatusState> {
  BeneficiaryStatusBloc(this._getBeneficiaryStatusUseCase)
      : super(const BeneficiaryStatusState.initial()) {
    on<_GetBeneficiaryStatus>(_onGetBeneficiaryStatus);
  }

  final GetBeneficiaryStatusUseCase _getBeneficiaryStatusUseCase;

  Future<void> _onGetBeneficiaryStatus(
    _GetBeneficiaryStatus event,
    Emitter<BeneficiaryStatusState> emit,
  ) async {
    emit(const BeneficiaryStatusState.loading());

    final result = await _getBeneficiaryStatusUseCase();

    result.fold(
      (Failure failure) =>
          emit(BeneficiaryStatusState.failure(failure.message)),
      (BeneficiaryStatusEntity response) =>
          emit(BeneficiaryStatusState.success(response)),
    );
  }
}
