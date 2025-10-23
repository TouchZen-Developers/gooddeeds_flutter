import 'package:dartz/dartz.dart';

import '../network/models/api_error.dart';
import 'failure.dart';

abstract class UseCase<T, Params> {
  Future<Either<Failure, T>> call(Params params);
}

class NoParams {}

extension ApiErrorX on ApiError {
  Failure toFailure() => Failure(displayMessage);
}
