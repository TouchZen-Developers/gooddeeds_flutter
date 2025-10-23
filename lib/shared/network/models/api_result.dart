import 'package:freezed_annotation/freezed_annotation.dart';

import 'api_error.dart';

part 'api_result.freezed.dart';

@freezed
sealed class ApiResult<T> with _$ApiResult<T> {
  const factory ApiResult.success(T data) = Success<T>;
  const factory ApiResult.failure(ApiError error) = Failure<T>;
}

extension ApiResultExtension<T> on ApiResult<T> {
  bool get isSuccess => this is Success<T>;
  bool get isFailure => this is Failure<T>;

  T? get dataOrNull => switch (this) {
        Success(:final data) => data,
        Failure() => null,
      };

  ApiError? get errorOrNull => switch (this) {
        Success() => null,
        Failure(:final error) => error,
      };
}
