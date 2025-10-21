import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';

import '../design_system/components/custom_snack_bar.dart';
import 'models/api_error.dart';

/// A service class responsible for handling and displaying various types of errors and messages
/// to the user through UI components like SnackBars.
///
/// This class provides methods to show different types of messages:
/// - Error messages (red SnackBar)
/// - Success messages (green SnackBar)
/// - Info messages (blue SnackBar)
@injectable
class ErrorHandler {
  ErrorHandler(@Named('rootNavigatorKey') this._navigatorKey);
  final GlobalKey<NavigatorState> _navigatorKey;

  /// Displays an error message to the user using a top SnackBar
  ///
  /// [error] - The ApiError containing the error message to display
  void showError(ApiError error) {
    final message = error.displayMessage;

    // Get overlay directly from NavigatorState instead of context
    final overlay = _navigatorKey.currentState?.overlay;

    if (overlay != null) {
      // Use WidgetsBinding to ensure we're after the current frame
      WidgetsBinding.instance.addPostFrameCallback((_) {
        showTopSnackBar(
          overlay,
          CustomSnackBar.error(message: message),
        );
      });
    }
  }

  /// Displays an error message to the user using a red SnackBar (legacy method)
  ///
  /// [context] - The build context to show the SnackBar
  /// [error] - The ApiError containing the error message to display
  @Deprecated('Use showError(ApiError error) instead')
  void showErrorWithContext(BuildContext context, ApiError error) {
    final message = error.displayMessage;

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        backgroundColor: Colors.red,
        behavior: SnackBarBehavior.floating,
        action: SnackBarAction(
          label: 'OK',
          textColor: Colors.white,
          onPressed: () {
            ScaffoldMessenger.of(context).hideCurrentSnackBar();
          },
        ),
      ),
    );
  }

  /// Displays a success message to the user using a green SnackBar
  ///
  /// [context] - The build context to show the SnackBar
  /// [message] - The success message to display
  void showSuccess(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        backgroundColor: Colors.green,
        behavior: SnackBarBehavior.floating,
        duration: const Duration(seconds: 3),
        action: SnackBarAction(
          label: 'OK',
          textColor: Colors.white,
          onPressed: () {
            ScaffoldMessenger.of(context).hideCurrentSnackBar();
          },
        ),
      ),
    );
  }

  /// Displays an informational message to the user using a blue SnackBar
  ///
  /// [context] - The build context to show the SnackBar
  /// [message] - The informational message to display
  void showInfo(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        backgroundColor: Colors.blue,
        behavior: SnackBarBehavior.floating,
        duration: const Duration(seconds: 3),
        action: SnackBarAction(
          label: 'OK',
          textColor: Colors.white,
          onPressed: () {
            ScaffoldMessenger.of(context).hideCurrentSnackBar();
          },
        ),
      ),
    );
  }
}
