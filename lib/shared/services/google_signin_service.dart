import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';

@singleton
class GoogleSignInService {
  GoogleSignInService();

  final GoogleSignIn _googleSignIn = GoogleSignIn(
    scopes: ['email', 'profile'],
  );

  Future<GoogleSignInAccount?> signIn() async {
    try {
      final GoogleSignInAccount? account = await _googleSignIn.signIn();
      return account;
    } catch (error) {
      throw GoogleSignInException('Failed to sign in with Google: $error');
    }
  }

  Future<void> signOut() async {
    try {
      await _googleSignIn.signOut();
    } catch (error) {
      throw GoogleSignInException('Failed to sign out: $error');
    }
  }

  Future<GoogleSignInAccount?> getCurrentUser() async {
    return _googleSignIn.currentUser;
  }

  Future<bool> isSignedIn() async {
    return _googleSignIn.currentUser != null;
  }

  Stream<GoogleSignInAccount?> get onCurrentUserChanged {
    return _googleSignIn.onCurrentUserChanged;
  }
}

class GoogleSignInException implements Exception {
  GoogleSignInException(this.message);

  final String message;

  @override
  String toString() => 'GoogleSignInException: $message';
}
