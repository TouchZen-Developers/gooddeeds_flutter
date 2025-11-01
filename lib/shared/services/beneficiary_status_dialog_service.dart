import 'package:gooddeeds/shared/data/user_role.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@singleton
class BeneficiaryStatusDialogService {
  BeneficiaryStatusDialogService(this._prefs);

  final SharedPreferences _prefs;

  /// Check if the beneficiary status dialog has been shown before
  bool hasDialogBeenShown() {
    return _prefs.getBool(kPrefBeneficiaryStatusDialogShown) ?? false;
  }

  /// Mark that the beneficiary status dialog has been shown
  Future<void> markDialogAsShown() async {
    await _prefs.setBool(kPrefBeneficiaryStatusDialogShown, true);
  }

  /// Check if this is the first time after login
  bool isFirstTimeAfterLogin() {
    return _prefs.getBool(kPrefFirstTimeAfterLogin) ?? true;
  }

  /// Mark that user has visited home after login
  Future<void> markNotFirstTimeAfterLogin() async {
    await _prefs.setBool(kPrefFirstTimeAfterLogin, false);
  }

  /// Reset the dialog shown status (for testing purposes)
  Future<void> resetDialogStatus() async {
    await _prefs.remove(kPrefBeneficiaryStatusDialogShown);
  }

  /// Reset first time after login status (for testing purposes)
  Future<void> resetFirstTimeAfterLogin() async {
    await _prefs.remove(kPrefFirstTimeAfterLogin);
  }
}
