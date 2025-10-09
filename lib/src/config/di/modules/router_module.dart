import 'package:go_router/go_router.dart';
import 'package:injectable/injectable.dart';

import '../../routes/app_router.dart';

@module
abstract class RouterModule {
  @lazySingleton
  GoRouter router() => createRouter();
}
