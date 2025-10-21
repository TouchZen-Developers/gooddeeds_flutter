import 'dart:convert';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';

@singleton
class SecureStorageService {
  SecureStorageService(this._secureStorage);
  final FlutterSecureStorage _secureStorage;

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

  // Clear all auth data
  Future<void> clearAuthData() async {
    await Future.wait([
      deleteToken(),
      deleteUserData(),
    ]);
  }

  // Check if user is logged in
  Future<bool> isLoggedIn() async {
    final token = await getToken();
    return token != null && token.isNotEmpty;
  }
}
