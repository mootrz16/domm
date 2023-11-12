import 'package:dio/dio.dart';

class DioHelper
{
  static Dio? dio ;

  static init()
  {
    dio = Dio(
        BaseOptions(
          baseUrl: 'https://student.valuxapps.com/api/' ,
          receiveDataWhenStatusError: true,
        )
    );
  }

  // static Future<Response> getData({String? token,String lang = 'en',required String path , Map <String,dynamic>? queryParametares})async
  // {
  //   dio!.options.headers = {
  //     "Content-Type" : "application/json" ,
  //     "lang": lang,
  //     "Authorization" : token
  //   };
  //   return await dio!.get(path, queryParameters: queryParametares );
  // }
  //
  // static Future<Response> postData({String? token,String lang = 'en',required String path ,Map <String,dynamic>?queryParametares , required Map<String,dynamic> data })async
  // {
  //   dio!.options.headers = {
  //     "Content-Type" : "application/json" ,
  //     "lang": lang,
  //     "Authorization" : token
  //   };
  //
  //   return await dio!.post(path, queryParameters: queryParametares , data: data);
  // }
  //
  // static Future<Response> putData({String? token,String lang = 'en',required String path ,Map <String,dynamic>?queryParametares , required Map<String,dynamic> data })async
  // {
  //   dio!.options.headers = {
  //     "Content-Type" : "application/json" ,
  //     "lang": lang,
  //     "Authorization" : token
  //   };
  //
  //   return await dio!.put(path, queryParameters: queryParametares , data: data);
  // }
}