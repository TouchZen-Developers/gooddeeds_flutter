import 'dart:convert';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:gooddeeds/shared/data/user_role.dart';
import 'package:gooddeeds/shared/services/google_signin_service.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@singleton
class SecureStorageService {
  SecureStorageService(
      this._secureStorage, this._prefs, this._googleSignInService,);

  final FlutterSecureStorage _secureStorage;
  final SharedPreferences _prefs;
  final GoogleSignInService _googleSignInService;

  // Keys for storage
  static const String _tokenKey = 'auth_token';
  static const String _userKey = 'user_data';

  // Token methods
  Future<void> saveToken(String token) async {
    await _secureStorage.write(key: _tokenKey, value: token);
  }

  Future<String?> getToken() async {
    return await _secureStorage.read(key: _tokenKey);
  }

  Future<void> deleteToken() async {
    await _secureStorage.delete(key: _tokenKey);
  }

  // User data methods
  Future<void> saveUserData(Map<String, dynamic> userData) async {
    final jsonString = jsonEncode(userData);
    await _secureStorage.write(key: _userKey, value: jsonString);
  }

  Future<Map<String, dynamic>?> getUserData() async {
    final jsonString = await _secureStorage.read(key: _userKey);
    if (jsonString != null) {
      return jsonDecode(jsonString) as Map<String, dynamic>;
    }
    return null;
  }

  Future<void> deleteUserData() async {
    await _secureStorage.delete(key: _userKey);
  }

  // Clear all auth data from both SecureStorage, SharedPreferences, and Google Sign In
  Future<void> clearAuthData() async {
    await Future.wait([
      deleteToken(),
      deleteUserData(),
      _prefs.remove(kPrefUserRole),
      _googleSignInService.signOut(), // Also sign out from Google
    ]);
  }

  // Check if user is logged in
  Future<bool> isLoggedIn() async {
    final token = await getToken();
    return token != null && token.isNotEmpty;
  }
}
