import 'package:flutter_test/flutter_test.dart';
import 'package:stacked_web/app/app.locator.dart';

import '../helpers/test_helpers.dart';

void main() {
  group('CourseServiceTest -', () {
    setUp(() => registerServices());
    tearDown(() => locator.reset());
  });
}
