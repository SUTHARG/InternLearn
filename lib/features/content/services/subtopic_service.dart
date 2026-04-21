import 'package:nexus/features/content/data/models/subtopic.dart';
import 'package:nexus/core/singleton.dart';

class SubtopicService {
  static Future<List<Subtopic>> fetchSubtopics(int topicId) async {
    try {
      final response = await supabase
          .from("subtopic")
          .select()
          .eq("topic_id", topicId);
      return response.map((json) => Subtopic.fromJson(json)).toList();
    } catch (e) {
      logger.e("Failed to fetch subtopics: $e");
      return [];
    }
  }
}
