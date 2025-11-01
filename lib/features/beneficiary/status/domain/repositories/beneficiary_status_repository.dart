import 'package:dartz/dartz.dart';
import 'package:gooddeeds/shared/domain/failure.dart';

import '../entities/beneficiary_status_entity.dart';

abstract class BeneficiaryStatusRepository {
  Future<Either<Failure, BeneficiaryStatusEntity>> getBeneficiaryStatus();
}
