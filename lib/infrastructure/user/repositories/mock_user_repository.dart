import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/common/failures/failure.dart';
import '../../../domain/user/interfaces/i_user_repository.dart';
import '../../../domain/user/models/learn_topic.dart';
import '../../../domain/user/models/test_preparation.dart';
import '../../../presentation/common.dart';
import '../../common/db/fixture_loader.dart';
import '../dto/learning_topic_dto.dart';
import '../dto/test_preparation_dto.dart';

@LazySingleton(as: UserRepository)
class MockUserRepository extends UserRepository {
  MockUserRepository();

  @override
  Future<Either<Failure, List<LearnTopic>>> getLearnTopics() async {
    try {
      final res = await FixtureLoader.learnTopicResponse;
      final list = List<LearningTopicDto>.from(
        res.map((x) => LearningTopicDto.fromJson(x)),
      );

      return right(list.map((e) => e.toDomain()).toList());
    } on FlutterError {
      return left(const Failure.serverError());
    }
  }

  @override
  Future<Either<Failure, List<TestPreparation>>>
      getTestPreparationTopics() async {
    try {
      final res = await FixtureLoader.testPreparationResponse;
      final list = List<TestPreparationDto>.from(
        res.map((x) => TestPreparationDto.fromJson(x)),
      );

      return right(list.map((e) => e.toDomain()).toList());
    } on FlutterError {
      return left(const Failure.serverError());
    }
  }

// @disposeMethod
// void dispose(){
//   _box.delete('learn_topics');
//   _box.delete('test_preparation');
// }

}
