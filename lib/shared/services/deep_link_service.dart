import 'dart:async';
import 'dart:developer' as developer;

import 'package:app_links/app_links.dart';
import 'package:injectable/injectable.dart';

@singleton
class DeepLinkService {
  DeepLinkService() : _appLinks = AppLinks();

  final AppLinks _appLinks;

  Stream<Uri> get deepLinkStream => _deepLinkController.stream;
  final _deepLinkController = StreamController<Uri>.broadcast();

  StreamSubscription<Uri>? _sub;

  void initialize() {
    developer.log('🔔 DeepLinkService initialized');
    // Listen to app links when app is already running
    _sub = _appLinks.uriLinkStream.listen(
      (Uri uri) {
        developer.log('🌐 Deep link stream received: $uri');
        _deepLinkController.add(uri);
      },
      onError: (err) {
        // Handle exception by warning the user
        developer.log('❌ Deep link error: $err');
      },
    );
  }

  Future<Uri?> getInitialLink() async {
    try {
      developer.log('🔍 Checking for initial link...');
      final uri = await _appLinks.getInitialLink();
      if (uri != null) {
        developer.log('✅ Initial link found: $uri');
      } else {
        developer.log('ℹ️ No initial link found');
      }
      return uri;
    } catch (e) {
      developer.log('❌ Failed to get initial link: $e');
      return null;
    }
  }

  void dispose() {
    _sub?.cancel();
    _deepLinkController.close();
  }
}
