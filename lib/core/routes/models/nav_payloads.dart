import 'package:nexus/features/content/data/models/chapter.dart';
import 'package:nexus/features/content/data/models/subject.dart';
import 'package:nexus/features/content/data/models/topic.dart';

class TopicsNavData {
  const TopicsNavData({required this.subject, required this.chapter});

  final Subject subject;
  final Chapter chapter;
}

class SubtopicsNavData {
  const SubtopicsNavData({
    required this.subject,
    required this.chapter,
    required this.topic,
  });

  final Subject subject;
  final Chapter chapter;
  final Topic topic;
}
