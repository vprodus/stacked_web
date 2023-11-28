import 'package:stacked_web/app/app.locator.dart';
import 'package:stacked_web/models/course.dart';
import 'package:stacked_web/services/http_service.dart';

class CourseService {
  final _httpService = locator<HttpService>();

  Future<Course> getCourseForId(String id) async {
    try {
      return await _httpService.getCourse(id: id);
    } on StateError catch (_) {
      throw ResourceNotFoundException(name: 'courses', id: id);
    } catch (e) {
      rethrow;
    }
  }
}

class ResourceNotFoundException implements Exception {
  final String name;
  final String id;

  ResourceNotFoundException({
    required this.name,
    required this.id,
  });

  @override
  String toString() {
    return 'ERROR: $id could not be found for $name';
  }
}
