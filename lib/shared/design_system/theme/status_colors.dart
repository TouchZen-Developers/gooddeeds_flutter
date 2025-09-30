import 'package:flutter/material.dart';
import '../tokens/colors.dart';

class StatusColors extends ThemeExtension<StatusColors> {
  const StatusColors({
    required this.success,
    required this.onSuccess,
    required this.warning,
    required this.onWarning,
    required this.error,
    required this.onError,
    required this.info,
    required this.onInfo,
  });
  final Color success,
      onSuccess,
      warning,
      onWarning,
      error,
      onError,
      info,
      onInfo;

  @override
  StatusColors copyWith({
    Color? success,
    Color? onSuccess,
    Color? warning,
    Color? onWarning,
    Color? error,
    Color? onError,
    Color? info,
    Color? onInfo,
  }) =>
      StatusColors(
        success: success ?? this.success,
        onSuccess: onSuccess ?? this.onSuccess,
        warning: warning ?? this.warning,
        onWarning: onWarning ?? this.onWarning,
        error: error ?? this.error,
        onError: onError ?? this.onError,
        info: info ?? this.info,
        onInfo: onInfo ?? this.onInfo,
      );

  @override
  ThemeExtension<StatusColors> lerp(
    ThemeExtension<StatusColors>? other,
    double t,
  ) =>
      this;

  static const light = StatusColors(
    success: BrandTones.success,
    onSuccess: Colors.white,
    warning: BrandTones.warning,
    onWarning: Colors.black,
    error: BrandTones.error,
    onError: Colors.white,
    info: BrandTones.info,
    onInfo: Colors.white,
  );

  static const dark = StatusColors(
    success: BrandTones.success,
    onSuccess: Colors.black,
    warning: BrandTones.warning,
    onWarning: Colors.black,
    error: BrandTones.error,
    onError: Colors.black,
    info: BrandTones.info,
    onInfo: Colors.black,
  );
}
