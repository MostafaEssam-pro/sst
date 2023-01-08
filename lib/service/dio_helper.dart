import 'package:dio/dio.dart';

class DioHelper {
  static late Dio dio;
  static late Dio dioLogin;

  static init() {
    String baseUrl = 'https://sstworkflowmobileapi.azurewebsites.net/';
    String loginUrl = 'https://apisstmobiletestauthorization.sstegweb.com/Login/';


    dio = Dio(BaseOptions(
        baseUrl: baseUrl,
        receiveDataWhenStatusError: true,
        followRedirects: false,
        connectTimeout: 500000000,
        receiveTimeout: 500000000,

        responseType: ResponseType.plain,
        )
    );
    dioLogin = Dio(BaseOptions(
        baseUrl: loginUrl,
        receiveDataWhenStatusError: true,
        followRedirects: false,
        connectTimeout: 5000000,
        receiveTimeout: 5000000,
        responseType: ResponseType.plain,
        )
    );

  }

  static Future<Response> getData({
    required String url,
    Map<String, dynamic>? query,
    String? token,
    String? cultureLang,
    String? actionBy,
    String? RequestTypeCode,
  }) async {
    dio.options.headers = {
      'dbserver':'47.91.90.208\\SQLSTANDARD2019,1433',
      'dbname':'SSTERPSolutionMobile',
      'ClientCode':20002,
      'Content-Type': 'application/json',
      'authorization': 'Bearer $token',
      'Culture':cultureLang,
      'actionBy':actionBy,
      'RequestTypeCode':RequestTypeCode,
      'BranchId':7,
      'Culture':'ar',
    };
    return await dio.get(url, queryParameters: query);
  }

  static Future<Response> postData({
    required String url,
    Map<String, dynamic>? query,
    required Map<String, dynamic> data,
    String? token,
    String? cultureLang,
    String? actionBy,
    int? RequestTypeCode,

  }) async{
    dio.options.headers = {
      'dbserver':'47.91.90.208\\SQLSTANDARD2019,1433',
      'dbname':'SSTERPSolutionMobile',
      'ClientCode':20002,
      'Content-Type': 'application/json',
      'authorization': 'Bearer $token',
      'Culture':cultureLang,
      'actionBy':actionBy,
      'RequestTypeCode':RequestTypeCode,
      'BranchId':7,
      'Culture':'ar',
    };

    var response =await dio.post(url, queryParameters: query, data: data);

    return response;

  }

  static Future<Response> putData({
    required String url,
    Map<String, dynamic>? query,
    required Map<String, dynamic> data,
    String? token,
    String? cultureLang,
    String? actionBy,
    String? RequestTypeCode,

  }) async{
    dio.options.headers = {
      'dbserver':'47.91.90.208\\SQLSTANDARD2019,1433',
      'dbname':'SSTERPSolutionMobile',
      'ClientCode':20002,
      'Content-Type': 'application/json',
      'authorization': 'Bearer $token',
      'Culture':cultureLang,
      'actionBy':actionBy,
      'RequestTypeCode':RequestTypeCode,
      'BranchId':7,
      'Culture':'ar',

    };
    print(data);
    return  await dio.post(url, queryParameters: query, data: data);
  }

  static Future<Response> loginData({
    required String url,
    Map<String, dynamic>? query,
    // String? token,
  }) async {
    dioLogin.options.headers = {
      'Content-Type': 'application/json',
      'dbserver':'47.91.90.208\\SQLSTANDARD2019,1433',
      'dbname':'SSTERPSolutionMobile',
      'ClientCode':20002,
      'BranchId':7,
      'Culture':'ar',


    };
    return await dioLogin.get(url, queryParameters: query);
  }
}

class DioExceptions implements Exception {
  DioExceptions.fromDioError(DioError dioError) {
    switch (dioError.type) {
      case DioErrorType.cancel:
        message = "Request to API server was cancelled";
        break;
      case DioErrorType.connectTimeout:
        message = "Connection timeout with API server";
        break;
      case DioErrorType.receiveTimeout:
        message = "Receive timeout in connection with API server";
        break;
      case DioErrorType.response:
        message =
            _handleError(dioError.response!.statusCode!, dioError.response!.data);
        break;
      case DioErrorType.sendTimeout:
        message = "Send timeout in connection with API server";
        break;
      default:
        message = "Something went wrong";
        break;
    }
  }

  late  String message;

  String _handleError(int statusCode, dynamic error) {
    switch (statusCode) {
      case 400:
        return 'Bad request';
      case 404:
        return error["message"];
      case 500:
        return 'Internal server error';
      default:
        return 'Oops something went wrong';
    }
  }


  String toString() => message;
}
