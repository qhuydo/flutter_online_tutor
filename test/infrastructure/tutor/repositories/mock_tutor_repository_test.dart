import 'package:dartz/dartz.dart';
import 'package:flutter_online_tutor/domain/common/failures/failure.dart';
import 'package:flutter_online_tutor/infrastructure/tutor/repository/mock_tutor_repository.dart';
import 'package:flutter_online_tutor/infrastructure/user/data_source/local_tutor_data_source.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hive_flutter/adapters.dart';

main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  late LocalTutorDataSource dataSource;
  late MockTutorRepository repository;

  setUp(() async {
    await Hive.initFlutter('test');
    await Hive.openBox<String>('tutors');
    dataSource = LocalTutorDataSource();
    repository = MockTutorRepository(dataSource);
  });

  tearDown(() async {
    await dataSource.clear();
    await dataSource.dispose();
  });

  group('recommended tutors', () {
    test('get recommended tutors without any errors', () async {
      // act
      final result = await repository.getRecommendedTutors(page: 1, limit: 100);
      final tutors = dataSource.getAllTutors();

      // assert
      expect(result.isRight(), isTrue);
      expect(tutors.isNotEmpty, isTrue);
    });
  });
  group('recommended tutors', () {
    test('get recommended tutors without any errors', () async {
      // act
      final result = await repository.getRecommendedTutors(page: 1, limit: 100);
      final tutors = dataSource.getAllTutors();

      // assert
      expect(result.isRight(), isTrue);
      expect(tutors.isNotEmpty, isTrue);
    });
  });
  group('find tutors', () {
    test('find tutors by name', () async {
      // arrange
      await repository.getRecommendedTutors(page: 1, limit: 100);

      // act
      final result = await repository.searchTutor(
        specialities: [],
        keyword: 'Sam',
        page: 1,
        limit: 100,
      );

      final tutors = result.fold((l) => null, (r) => r);

      // assert
      expect(result.isRight(), isTrue);
      expect(tutors?.isNotEmpty, isTrue);
      expect(tutors![0].name.contains('Sam'), isTrue);
    });
  });
  group('get tutor details', () {
    test('should get tutor', () async {
      // arrange
      const tutorId = '45f8709e-2e84-46f2-b238-817a85cc2b29';

      // act
      final result = await repository.getTutorById(tutorId);

      // assert
      expect(result.isRight(), isTrue);
    });

    test('should returns failure when tutor not found', () async {
      // arrange
      const tutorId = '1234';

      // act
      final result = await repository.getTutorById(tutorId);

      // assert
      expect(result.isLeft(), isTrue);
      expect(result, equals(const Left(Failure.notFound())));
    });
  });
}
