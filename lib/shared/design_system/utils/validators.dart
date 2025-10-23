/// Global validators & extensions used across the app (US-only phone & ZIP).
/// Drop-in: import this file anywhere you need validation.
/// - Email: RFC-ish, allows plus-aliasing, blocks double dots
/// - Phone (US): accepts "+1", separators, parentheses; normalizes to +1XXXXXXXXXX
/// - ZIP (US): 5 or ZIP+4
library;

typedef Validator = String? Function(String value);

/// ----------------------
/// Core regex patterns
/// ----------------------

/// Basic but strict-ish email:
///  - Case-insensitive
///  - Allows `+` aliasing
///  - Disallows consecutive dots
///  - TLD 2..63 chars
final RegExp _emailRegex = RegExp(
  r'^(?!.*\.\.)[A-Z0-9._%+\-]+@[A-Z0-9.\-]+\.[A-Z]{2,63}$',
  caseSensitive: false,
);

/// US phone:
///  - Optional "+1"
///  - Optional parentheses for area code
///  - Dots/spaces/hyphens as separators
///  - Area/central office cannot start with 0/1
final RegExp _usPhoneRegex = RegExp(
  r'^(\+1\s?)?(\([2-9]\d{2}\)|[2-9]\d{2})[-.\s]?[2-9]\d{2}[-.\s]?\d{4}$',
);

/// US ZIP: 5 digits or ZIP+4
final RegExp _usZipRegex = RegExp(r'^\d{5}(?:-\d{4})?$');

/// Password validation patterns
final RegExp _passwordUppercaseRegex = RegExp(r'[A-Z]');
final RegExp _passwordLowercaseRegex = RegExp(r'[a-z]');
final RegExp _passwordNumberRegex = RegExp(r'[0-9]');
final RegExp _passwordSymbolRegex = RegExp(r'[!@#$%^&*(),.?":{}|<>]');

/// String extensions
/// ----------------------

extension EmailValidationX on String {
  /// Returns `true` if the string looks like a valid email.
  bool get isValidEmail => _emailRegex.hasMatch(trim());
}

extension USPhoneValidationX on String {
  /// Returns `true` for valid US phone formats (e.g., 2125550123, (212) 555-0123, +1 212-555-0123).
  bool get isValidUSPhone => _usPhoneRegex.hasMatch(trim());
}

extension ZipValidationX on String {
  /// Returns `true` for US ZIP (##### or #####-####).
  bool get isValidUSZip => _usZipRegex.hasMatch(trim());
}

extension PasswordValidationX on String {
  /// Returns `true` if password meets all requirements:
  /// - At least 8 characters
  /// - Contains uppercase letter
  /// - Contains lowercase letter
  /// - Contains number
  /// - Contains symbol
  bool get isValidPassword {
    final password = trim();
    if (password.length < 8) return false;
    if (!_passwordUppercaseRegex.hasMatch(password)) return false;
    if (!_passwordLowercaseRegex.hasMatch(password)) return false;
    if (!_passwordNumberRegex.hasMatch(password)) return false;
    if (!_passwordSymbolRegex.hasMatch(password)) return false;
    return true;
  }

  /// Returns specific password validation error message or null if valid
  String? get passwordValidationError {
    final password = trim();
    if (password.isEmpty) {
      return 'Password is required';
    }
    if (password.length < 8) {
      return 'Password must be at least 8 characters';
    }
    if (!_passwordUppercaseRegex.hasMatch(password)) {
      return 'Password must contain uppercase letter';
    }
    if (!_passwordLowercaseRegex.hasMatch(password)) {
      return 'Password must contain lowercase letter';
    }
    if (!_passwordNumberRegex.hasMatch(password)) {
      return 'Password must contain at least one number';
    }
    if (!_passwordSymbolRegex.hasMatch(password)) {
      return 'Password must contain a symbol';
    }
    return null;
  }
}

extension StringSanitizersX on String {
  /// Keeps only digits: e.g. "2a-3 " -> "23"
  String get digitsOnly => replaceAll(RegExp(r'\D'), '');
}
