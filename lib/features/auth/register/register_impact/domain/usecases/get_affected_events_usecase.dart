import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../../../shared/domain/failure.dart' as domain;
import '../repositories/affected_events_repository.dart';

@injectable
class GetAffectedEventsUseCase {
  GetAffectedEventsUseCase(this._repository);

  final AffectedEventsRepository _repository;

  Future<Either<domain.Failure, List<String>>> call() =>
      _repository.getEvents();
}
