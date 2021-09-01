import 'package:cat_fact/network/dio_interceptor.dart';
import 'package:cat_fact/network/exception.dart';
import 'package:dio/dio.dart';

const _defaultConnectTimeout = Duration.millisecondsPerMinute;
const _defaultReceiveTimeout = Duration.millisecondsPerMinute;

class DioClient{
  final String baseUrl;
  late Dio _dio;

  DioClient(this.baseUrl,Dio dio){
    _dio = dio;
    _dio
      ..options.baseUrl = baseUrl
      ..options.connectTimeout = _defaultConnectTimeout
      ..options.receiveTimeout = _defaultReceiveTimeout
      ..httpClientAdapter
      ..options.headers = {'Content-Type': 'application/json; charset=UTF-8'};
    _dio.interceptors.add(new CustomInterceptors());
  }

  Future<dynamic> get( String uri, {Map<String, dynamic>? queryParameters,Options? options,CancelToken? cancelToken,ProgressCallback? onReceiveProgress}) async {
    try {
      var response = await _dio.get(
        uri,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
        onReceiveProgress: onReceiveProgress,
      );
      return response.data;
    } on DioError catch (e) {
      throw _catchDioError(e);
    }
  }

  _catchDioError(DioError error){
    switch (error.response!.statusCode) {
      case 400:
      throw BadRequestException(error.message);
    case 401:
    case 403:
      throw UnauthorisedException(error.message);
    case 500:
    default:
      throw FetchDataException(
          'Error occured while Communication with Server with StatusCode : ${error.response!.statusCode}');
    }
  }

}