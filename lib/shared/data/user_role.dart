enum UserRole { beneficiary, donor }

extension UserRoleX on UserRole {
  String get asString => switch (this) {
        // Store using new vocabulary
        UserRole.beneficiary => 'beneficiary',
        UserRole.donor => 'Donorr',
      };

  static UserRole? fromString(String? v) => switch (v) {
        // New vocabulary only
        'beneficiary' => UserRole.beneficiary,
        'Donorr' => UserRole.donor,
        _ => null,
      };
}

const kPrefUserRole = 'pref.user_role';
const kPrefBeneficiaryStatusDialogShown =
    'pref.beneficiary_status_dialog_shown';
const kPrefFirstTimeAfterLogin = 'pref.first_time_after_login';
const kPrefPendingNextStep = 'pref.pending_next_step';
const kPrefPendingDeepLinkError = 'pref.pending_deep_link_error';
