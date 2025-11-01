import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../../../shared/domain/failure.dart' as domain;
import '../../../../../../shared/network/models/api_error.dart';
import '../../../../../../shared/network/models/api_result.dart';
import '../../domain/repositories/affected_events_repository.dart';
import '../datasources/affected_events_remote_datasource.dart';

@Injectable(as: AffectedEventsRepository)
class AffectedEventsRepositoryImpl implements AffectedEventsRepository {
  AffectedEventsRepositoryImpl(this._remote);

  final AffectedEventsRemoteDataSource _remote;

  @override
  Future<Either<domain.Failure, List<String>>> getEvents() async {
    final result = await _remote.getEvents();
    return switch (result) {
      Success(:final data) => Right(data),
      Failure(:final error) => Left(domain.Failure(_message(error))),
    };
  }

  String _message(ApiError e) => switch (e) {
        NetworkError(:final message) => message,
        ServerError(:final message) => message,
        UnauthorizedError(:final message) => message,
        ForbiddenError(:final message) => message,
        NotFoundError(:final message) => message,
        ValidationError(:final message) => message,
        UnknownError(:final message) => message,
      };
}
