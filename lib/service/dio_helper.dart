import 'package:dio/dio.dart';

class DioHelper {
  static late Dio dio;
  static late Dio dioLogin;

  static init() {
    String baseUrl = 'https://www.bazoka.eraasoft.com/api/';
    String loginUrl = 'https://localhost:44331/Login/';


    dio = Dio(BaseOptions(
        baseUrl: baseUrl,
        receiveDataWhenStatusError: true,
        followRedirects: false,
        connectTimeout: 5000000,
        receiveTimeout: 5000000,

        responseType: ResponseType.plain,
        headers: {
          'Content-Type': 'application/json',
        })
    );
    dioLogin = Dio(BaseOptions(
        baseUrl: loginUrl,
        receiveDataWhenStatusError: true,
        followRedirects: false,
        connectTimeout: 5000000,
        receiveTimeout: 5000000,
        responseType: ResponseType.plain,
        headers: {
          // ignore: unnecessary_string_escapes
          'dbserver':'47.91.90.208\SQLSTANDARD2019,1433',
          'dbname':'SSTERPSolutionMobile',
          'ClientCode':20002,
          'BranchId':7,
          'Culture':'ar',

        })
    );

  }

  static Future<Response> getData({
    required String url,
    Map<String, dynamic>? query,
    String? token,
  }) async {
    dio.options.headers = {
      'Content-Type': 'application/json',
      'authorization': 'Bearer $token',
    };
    return await dio.get(url, queryParameters: query);
  }

  static Future<Response> postData({
    required String url,
    Map<String, dynamic>? query,
    required Map<String, dynamic> data,
    String? token,
  }) {
    dio.options.headers = {
      'Authorization': 'Bearer $token',
    };
    return dio.post(url, queryParameters: query, data: data);
  }

  static Future<Response> putData({
    required String url,
    Map<String, dynamic>? query,
    required Map<String, dynamic> data,
    String? token,
  }) {
    dio.options.headers = {
      'Content-Type': 'application/json',
      'authorization': 'Bearer $token',
    };
    return dio.post(url, queryParameters: query, data: data);
  }

  static Future<Response> loginData({
    required String url,
    Map<String, dynamic>? query,
    String? token,
  }) async {
    dioLogin.options.headers = {
      'Content-Type': 'application/json',
    };
    return await dioLogin.get(url, queryParameters: query);
  }
}
