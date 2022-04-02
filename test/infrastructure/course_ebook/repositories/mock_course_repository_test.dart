import 'package:flutter_online_tutor/infrastructure/course/repositories/mock_course_repository.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  late MockCourseRepository repository;

  setUp(() {
    repository = MockCourseRepository();
  });

  group('course list', () {
    test('get course list', () async {
      final result = await repository.getRecommendedCourses(
        page: 1,
        limit: 100,
      );
      final list = result.fold((l) => null, (r) => r);

      // assert
      expect(result.isRight(), isTrue);
      expect(list?.isNotEmpty, isTrue);
    });
  });

  group('ebook list', () {
    test('get ebook list', () async {
      final result = await repository.getRecommendedEbooks(
        page: 1,
        limit: 100,
      );
      final list = result.fold((l) => null, (r) => r);

      // assert
      expect(result.isRight(), isTrue);
      expect(list?.isNotEmpty, isTrue);
    });
  });
}
