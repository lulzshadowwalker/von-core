import 'package:core/util/config.dart';
import 'package:dio/dio.dart';
import 'package:path/path.dart' as path;

abstract class LaravelBaseRepository {
  const LaravelBaseRepository(Dio dio) : _dio = dio;

  final Dio _dio;

  Dio get dio {
    _dio.options.headers.addAll(baseHeaders);

    // TODO: Might want to add access token by default in the authorization header but would that be flexbile enough ?

    _dio.options.validateStatus = (_) => true;

    return _dio;
  }

  static const baseUrl = Config.laravelApiBaseUrl;

  static const baseHeaders = {
    'Accept': 'application/json',
    'Content-Type': 'application/json',
  };

  String endpoint(String pathname) {
    final context = path.Context(style: path.Style.url);
    return context.join(baseUrl, pathname);
  }
}
