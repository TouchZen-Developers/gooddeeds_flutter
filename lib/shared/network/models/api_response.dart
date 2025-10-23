// import 'package:freezed_annotation/freezed_annotation.dart';
//
// part 'api_response.freezed.dart';
// part 'api_response.g.dart';
//
// /// Standard API response model for GoodDeeds API
// ///
// /// Represents the common response structure:
// /// {"success": true, "message": "...", "data": {...}}
// @Freezed(genericArgumentFactories: true, fromJson: true, toJson: true)
// class ApiResponse<T> with _$ApiResponse<T> {
//   const factory ApiResponse({
//     required bool success,
//     String? message,
//     T? data,
//   }) = _ApiResponse<T>;
//
//   factory ApiResponse.fromJson(
//     Map<String, dynamic> json,
//     T Function(Object?) fromJsonT,
//   ) =>
//       _$ApiResponseFromJson(json, fromJsonT);
//
//   Map<String, dynamic> toJson(
//     Object? Function(T) toJsonT,
//   ) => _$ApiResponseToJson(this, toJsonT);
// }
