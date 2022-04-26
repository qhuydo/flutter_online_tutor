abstract class RequestUrl {
  static AuthenticationEndpoints get auth => AuthenticationEndpoints();

  static UserEndpoints get user => UserEndpoints();

  static PaymentEndpoints get payment => PaymentEndpoints();

  static TutorEndpoints get tutor => TutorEndpoints();

  static ScheduleEndpoints get schedule => ScheduleEndpoints();

  static CourseEbookEndpoints get courseEbook => CourseEbookEndpoints();

  static String get contentCategory => 'content-category';
}

class AuthenticationEndpoints {
  static const _authPath = 'auth';

  String get _verifyPath => 'verify';

  String get login => '$_authPath/login';

  String get loginByPhone => '$_authPath/phone-login';

  String get loginByGoogle => '$_authPath/google';

  String get loginByFacebook => '$_authPath/facebook';

  String get refreshToken => '$_authPath/refresh-token';

  String verifyAccount(String token) => '$_authPath/verifyAccount?token=$token';

  String get register => '$_authPath/register';

  String get registerByPhone => '$_authPath/phone-register';

  String get resendRegisterOtp => '$_verifyPath/phone-auth-verify/create';

  String get activatePhoneNumberWithOtp =>
      '$_verifyPath/phone-auth-verify/activate';

  String get changePassword => '$_authPath/change-password';
}

class UserEndpoints {
  static const _userPath = 'user';

  String get forgotPassword => '$_userPath/forgotPassword';

  String get info => '$_userPath/info';

  String get feedbackTutor => '$_userPath/feedbackTutor';

  String get addTutorToFavourites => '$_userPath/manageFavoriteTutor';

  String get uploadAvatar => '$_userPath/uploadAvatar';
}

class PaymentEndpoints {
  static const _paymentPath = 'payment';

  String get history => '$_paymentPath/history';

  String get statistics => '$_paymentPath/statistics';

  String get referrals => '$_paymentPath/referrals';
}

class TutorEndpoints {
  static const _path = 'tutor';

  String get becomeTeacher => '$_path/register';

  String tutors({required int perPage, required int page}) =>
      '$_path/more?perPage=$perPage&page=$page';

  String tutor(String tutorId) => '$_path/$tutorId';

  String get search => '$_path/search';
}

class ScheduleEndpoints {
  static const _path = 'schedule';
  static const _bookingPath = 'booking';

  String get schedule => _path;

  String get scheduleById => _path;

  String bookedClasses({
    required int page,
    required int perPage,
    required int dateTimeLte,
    required String orderedBy,
    required String sortedBy,
  }) =>
      '$_bookingPath/list/student?page=$page&perPage=$perPage'
      '&dateTimeLte=$dateTimeLte&orderBy=$orderedBy&sortBy=$sortedBy';

  String upComingClasses({
    required int page,
    required int perPage,
    required int dateTimeGte,
    required String orderedBy,
    required String sortedBy,
  }) =>
      '$_bookingPath/list/student?page=$page&perPage=$perPage'
      '&dateTimeGte=$dateTimeGte&orderBy=$orderedBy&sortBy=$sortedBy';

  String get book => _bookingPath;

  String get cancelBookedClass => _bookingPath;

  String updateStudentRequest(String bookedId) =>
      '_$_bookingPath/student-request/$bookedId';
}

class CourseEbookEndpoints {
  static const _path = 'course';

  String get courses => _path;

  String get ebooks => 'e-book';

  String details(String id) => '$_path/$id';
}
