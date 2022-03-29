import 'package:dartz/dartz.dart';
import 'package:intl/intl.dart';

import '../../authentication/failures/value_failure.dart';
import '../../common/value_objects/value_object.dart';

class BirthDay extends ValueObject<ValueFailure, DateTime> {
  static final _dateFormat = DateFormat('yyyy-MM-dd');

  final Either<ValueFailure, DateTime> _birthDayOrFailure;

  BirthDay._(this._birthDayOrFailure);

  factory BirthDay(DateTime? dateTime) => BirthDay._(_validate(dateTime));

  factory BirthDay.fromString(String value) =>
      BirthDay._(_validate(DateTime.tryParse(value)));

  @override
  Either<ValueFailure, DateTime> get value => _birthDayOrFailure;

  /// Validate birth date some time before today's date and within 120 years.
  static Either<ValueFailure, DateTime> _validate(DateTime? dateTime) {
    if (dateTime == null) {
      return left(const ValueFailure.valueIsRequired());
    }

    final dateBefore120Years = dateTime.subtract(
      const Duration(days: 120 * 365),
    );

    final now = DateTime.now();

    if (dateTime.isBefore(dateBefore120Years) ||
        dateTime.isAtSameMomentAs(now)) {
      return left(const ValueFailure.invalidValue());
    }

    return right(dateTime);
  }

  String requireStringValue() {
    return _dateFormat.format(requireValue());
  }

  static String formatDate(DateTime date) => _dateFormat.format(date);
}
