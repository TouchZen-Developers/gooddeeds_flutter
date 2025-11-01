import 'package:dartz/dartz.dart';
import 'package:gooddeeds/shared/domain/failure.dart';
import 'package:injectable/injectable.dart';

import '../entities/beneficiary_status_entity.dart';
import '../repositories/beneficiary_status_repository.dart';

@injectable
class GetBeneficiaryStatusUseCase {
  GetBeneficiaryStatusUseCase(this._repository);

  final BeneficiaryStatusRepository _repository;

  Future<Either<Failure, BeneficiaryStatusEntity>> call() async {
    return _repository.getBeneficiaryStatus();
  }
}
