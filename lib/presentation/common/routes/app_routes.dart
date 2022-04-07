import 'package:auto_route/auto_route.dart';

import '../../all_pages.dart';

@MaterialAutoRouter(
    replaceInRouteName: 'Page,Route',
    routes: [
      AutoRoute(page: SplashPage, initial: true),
      AutoRoute(page: LoginPage),
      AutoRoute(page: LoginByPhonePage),
      AutoRoute(page: SignUpPage),
      AutoRoute(page: SignUpByPhonePage),
      AutoRoute(page: ResetPasswordPage),
      AutoRoute(
        page: HomePage,
        children: [
          AutoRoute(page: DashboardPage),
          AutoRoute(page: TutorPage),
          AutoRoute(page: CoursePage),
          AutoRoute(page: SchedulePage),
          AutoRoute(page: MessagePage),
        ],
      ),
      AutoRoute(page: SettingsPage),
      AutoRoute(page: ProfilePage),
      AutoRoute(page: ChangePasswordPage),
      AutoRoute(page: BecomeTutorPage),
      AutoRoute(path: '/tutors/:tutorId', page: TutorDetailsPage),
      AutoRoute(path: '/courses/:courseId', page: CourseDetailsPage),
      AutoRoute(
        path: '/courses/syllabus/:courseId/:chapterId',
        page: CourseSyllabusPage,
      ),
      AutoRoute(path: '/tutors/:tutorId/reviews', page: TutorReviewPage),
      AutoRoute(path: '/tutors/:tutorId/message', page: MessageDetailsPage),
      AutoRoute(page: HistoryPage),
      AutoRoute(path: '/ebooks/:ebookId', page: EbookDetailsPage),
      AutoRoute(path: '/tutors/:tutorId/schedule', page: TutorSchedulePage),
      AutoRoute(path: '/meeting/:meetingId', page: MeetingPage),
      AutoRoute(page: SettingsUnauthorizedPage),
    ])
class $AppRouter {}
