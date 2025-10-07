/// Global validators & extensions used across the app.
library;

final RegExp _emailRegex = RegExp(
  r'^(?!.*\.\.)[A-Z0-9._%+\-]+@[A-Z0-9.\-]+\.[A-Z]{2,63}$',
  caseSensitive: false,
);

extension EmailValidationX on String {
  /// Returns `true` if this string looks like a valid email address.
  /// - Trims whitespace
  /// - Case-insensitive
  /// - Allows `+` aliasing (e.g., john+test@gmail.com)
  /// - Disallows consecutive dots
  bool get isValidEmail => _emailRegex.hasMatch(trim());
}

/// If you prefer a function call style:
bool isValidEmail(String value) => value.isValidEmail;
