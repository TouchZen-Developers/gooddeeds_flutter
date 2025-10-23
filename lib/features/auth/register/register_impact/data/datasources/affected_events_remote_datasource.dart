import 'package:dio/dio.dart';
import 'package:gooddeeds/shared/network/dio_extensions.dart';
import 'package:injectable/injectable.dart';

import '../../../../../../shared/network/models/api_result.dart';

abstract class AffectedEventsRemoteDataSource {
  Future<ApiResult<List<String>>> getEvents();
}

@Injectable(as: AffectedEventsRemoteDataSource)
class AffectedEventsRemoteDataSourceImpl
    implements AffectedEventsRemoteDataSource {
  AffectedEventsRemoteDataSourceImpl(this._httpClient);

  final Dio _httpClient;

  @override
  Future<ApiResult<List<String>>> getEvents() async {
    return _httpClient.safeGet<List<String>>(
      'affected-events',
      (json) {
        // json is expected to be a List<dynamic> of {id,name}
        final list = (json as List)
            .map((e) => (e as Map<String, dynamic>)['name'] as String)
            .toList();
        return list;
      },
    );
  }
}
