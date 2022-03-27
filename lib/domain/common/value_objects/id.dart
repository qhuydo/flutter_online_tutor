import 'package:dartz/dartz.dart';
import 'package:uuid/uuid.dart';

import '../failures/id_failure.dart';
import 'value_object.dart';

class Id extends ValueObject<IdFailure, String> {

  @override
  Either<IdFailure, String> get value => _id;

  final Either<IdFailure, String> _id;

  const Id._(this._id);

  factory Id() => Id._(right(const Uuid().v4()));

  factory Id.fromString(String uniqueId) {
    if (uniqueId.isEmpty) return const Id._(Left(IdFailure.emptyValue()));
    return Id._(Right(uniqueId));
  }

}