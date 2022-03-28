

import 'package:flutter_online_tutor/infrastructure/user/repositories/mock_user_repository.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  late MockUserRepository userRepository;

  setUp(() {
    userRepository = MockUserRepository();
  });

  group('learning topic', () {
    
    test('should load learning topics', () async {

      // arrange

      // act
      final listOrFailure = await userRepository.getLearnTopics();

      // assert
      expect(listOrFailure.isRight(), isTrue);
    });

  });

  group('test preparation', () {

    test('should load test preparation topics', () async {
      // act
      final listOrFailure = await userRepository.getTestPreparationTopics();

      // assert
      expect(listOrFailure.isRight(), isTrue);
    });

  });

}