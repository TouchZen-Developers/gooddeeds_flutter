import 'package:injectable/injectable.dart';
import 'package:go_router/go_router.dart';
import '../routes/app_router.dart';

@module
abstract class RouterModule {
  @lazySingleton
  GoRouter router() => createRouter();
}
