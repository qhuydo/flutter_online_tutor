import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_online_tutor/presentation/course_ebook/course_details/widgets/syllabus.dart';

import '../../../../application/course_ebook/course_details/course_details_bloc.dart';
import '../../../../domain/course_ebook/models/course.dart';
import '../../../common.dart';
import '../../../common/utils/constants.dart';
import '../../../common/utils/default_app_bar.dart';
import '../../../common/widgets/empty_page.dart';
import '../../utils/constants.dart';
import 'course_details_content.dart';
import 'course_details_header.dart';

class CourseDetailsBody extends StatelessWidget {
  const CourseDetailsBody({Key? key}) : super(key: key);

  Widget _buildFlexibleSpaceBar(BuildContext context, Course course) {
    return FlexibleSpaceBar(
      stretchModes: const [
        StretchMode.zoomBackground,
        StretchMode.fadeTitle,
      ],
      background: Container(
        color: Theme.of(context).colorScheme.surface,
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 600),
          child: Image.network(course.imageUrl, fit: BoxFit.fitHeight),
        ),
      ),
    );
  }

  // TODO refactor into a widget
  Widget _buildNotFoundWidget(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(
        context,
        title: context.l10n.courseTitle,
      ),
      body: EmptyPage(text: context.l10n.pageNotFound),
    );
  }

  Widget _buildLoadingWidget(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(
        context,
        title: context.l10n.courseTitle,
      ),
      body: const Center(
        child: Padding(
          padding: EdgeInsets.all(itemSpacing),
          child: LinearProgressIndicator(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<CourseDetailsBloc, CourseDetailsState>(
        builder: (context, state) {
          if (state.isLoading) return _buildLoadingWidget(context);

          final course = state.course;
          if (course == null) return _buildNotFoundWidget(context);

          final coverHeight = min(MediaQuery.of(context).size.width, 600.0) *
              courseThumbnailRatioInverse;

          return CustomScrollView(
            physics: const BouncingScrollPhysics(),
            slivers: [
              SliverAppBar(
                title: Text(context.l10n.courseTitle),
                elevation: 0.75,
                shadowColor: Colors.grey[500]?.withOpacity(0.5),
                centerTitle: true,
                floating: true,
                stretch: true,
                expandedHeight: coverHeight,
                flexibleSpace: _buildFlexibleSpaceBar(context, course),
              ),
              SliverToBoxAdapter(
                child: SafeArea(
                  top: false,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: itemSpacing),
                      CourseDetailsHeader(course: course),
                      CourseDetailsContent(course: course),
                      const SizedBox(height: smallItemSpacing),
                      Syllabus(syllabus: course.courseTopic),
                    ],
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}