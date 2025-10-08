import 'package:flutter/material.dart';
import 'package:gooddeeds/l10n/app_localizations.dart';

extension AppLocalExt on BuildContext {
  AppLocalizations get loc =>
      AppLocalizations.of(this) ??
      lookupAppLocalizations(
        const Locale('en'),
      );
}
