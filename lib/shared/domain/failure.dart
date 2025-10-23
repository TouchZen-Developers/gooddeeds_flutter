import 'package:gooddeeds/shared/network/models/api_error.dart';

class Failure {
  factory Failure.fromApiError(ApiError error) {
    return Failure(
      error.displayMessage,
      code: error is ServerError ? error.statusCode : null,
    );
  }
  const Failure(this.message, {this.code});

  final String message;
  final int? code;
}
