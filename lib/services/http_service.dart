import 'package:dio/dio.dart';
import 'package:stacked_web/models/course.dart';

enum _HttpMethod { get, post, put, delete }

class HttpService {
  late final Dio _httpClient;

  HttpService() {
    _httpClient = Dio(BaseOptions(baseUrl: "https://run.mocky.io/v3/"));
  }

  Future<Response> _sendRequest({
    required _HttpMethod method,
    required String path,
    Map<String, dynamic> queryParameters = const {},
    Map<String, dynamic> body = const {},
  }) async {
    Response response;

    switch (method) {
      case _HttpMethod.post:
        response = await _httpClient.post(path,
            queryParameters: queryParameters, data: body);
        break;
      case _HttpMethod.put:
        response = await _httpClient.put(
          path,
          queryParameters: queryParameters,
          data: body,
        );
        break;
      case _HttpMethod.delete:
        response = await _httpClient.delete(
          path,
          queryParameters: queryParameters,
        );
        break;
      case _HttpMethod.get:
      default:
        response = await _httpClient.get(
          path,
          queryParameters: queryParameters,
        );
    }
    return response;
  }

  Future<Response> _makeHttpRequest(
      {required _HttpMethod method,
      required String path,
      Map<String, dynamic> queryParameters = const {},
      Map<String, dynamic> body = const {}}) async {
    try {
      final response = await _sendRequest(
        method: method,
        path: path,
        queryParameters: queryParameters,
        body: body,
      );

      return response;
    } on DioException catch (_) {
      rethrow;
    }
  }

  Future<List<Course>> getCourses() async {
    final response = await _makeHttpRequest(
        method: _HttpMethod.get, path: "3aa507c9-1703-4d64-b413-5739842a4f2d");
    if (response.statusCode != 200) return [];

    return List<Course>.from(response.data.map((c) => Course.fromJson(c)));
  }

  Future<Course> getCourse({required String id}) async {
    final courses = await getCourses();

    // return Course.fromJson(response.data);
    return courses.firstWhere((element) => element.id == id);
  }
}
