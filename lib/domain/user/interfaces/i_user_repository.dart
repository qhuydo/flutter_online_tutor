import 'package:dartz/dartz.dart';

import '../../common/failures/failure.dart';
import '../models/learn_topic.dart';
import '../models/test_preparation.dart';

abstract class UserRepository {

  Future<Either<Failure, List<LearnTopic>>> getLearnTopics();

  Future<Either<Failure, List<TestPreparation>>> getTestPreparationTopics();
}