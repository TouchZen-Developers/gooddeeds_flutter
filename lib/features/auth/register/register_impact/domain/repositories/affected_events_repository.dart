import 'package:dartz/dartz.dart';

import '../../../../../../shared/domain/failure.dart' as domain;

abstract class AffectedEventsRepository {
  Future<Either<domain.Failure, List<String>>> getEvents();
}
