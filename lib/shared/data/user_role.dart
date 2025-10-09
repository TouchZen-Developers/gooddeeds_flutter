enum UserRole { needDonations, helpFamilies }

extension UserRoleX on UserRole {
  String get asString => switch (this) {
        UserRole.needDonations => 'need_donations',
        UserRole.helpFamilies => 'help_families',
      };

  static UserRole? fromString(String? v) => switch (v) {
        'need_donations' => UserRole.needDonations,
        'help_families' => UserRole.helpFamilies,
        _ => null,
      };
}

const kPrefUserRole = 'pref.user_role';
