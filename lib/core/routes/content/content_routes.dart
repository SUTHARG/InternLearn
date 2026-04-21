import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:interactive_learn/core/routes/models/nav_payloads.dart';
import 'package:interactive_learn/features/content/data/models/subject.dart';
import 'package:interactive_learn/features/content/presentation/screens/chapters_screen.dart';
import 'package:interactive_learn/features/content/presentation/screens/subjects_screen.dart';
import 'package:interactive_learn/features/content/presentation/screens/subtopics_screen.dart';
import 'package:interactive_learn/features/content/presentation/screens/topics_screen.dart';
import 'package:interactive_learn/features/content/presentation/slides/slide_viewer_screen.dart';

part 'content_routes.g.dart';

@TypedGoRoute<SubjectsRoute>(path: '/subjects')
class SubjectsRoute extends GoRouteData with $SubjectsRoute {
  const SubjectsRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const SubjectsScreen();
  }
}

@TypedGoRoute<ChaptersRoute>(path: '/chapters')
class ChaptersRoute extends GoRouteData with $ChaptersRoute {
  const ChaptersRoute({required this.$extra});

  final Subject $extra;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return ChaptersPage(subject: $extra);
  }
}

@TypedGoRoute<TopicsRoute>(path: '/topics')
class TopicsRoute extends GoRouteData with $TopicsRoute {
  const TopicsRoute({required this.$extra});

  final TopicsNavData $extra;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return TopicsScreen(subject: $extra.subject, chapter: $extra.chapter);
  }
}

@TypedGoRoute<SubtopicsRoute>(path: '/subtopics')
class SubtopicsRoute extends GoRouteData with $SubtopicsRoute {
  const SubtopicsRoute({required this.$extra});

  final SubtopicsNavData $extra;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return SubtopicsScreen(
      subject: $extra.subject,
      chapter: $extra.chapter,
      topic: $extra.topic,
    );
  }
}

@TypedGoRoute<SlideViewerRoute>(path: '/slides/:subtopicId')
class SlideViewerRoute extends GoRouteData with $SlideViewerRoute {
  const SlideViewerRoute({
    required this.subtopicId,
    required this.subtopicTitle,
  });

  final int subtopicId;
  final String subtopicTitle;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return SlideViewerScreen(
      subtopicId: subtopicId,
      subtopicTitle: subtopicTitle,
    );
  }
}
