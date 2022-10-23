// ignore_for_file: avoid_print

import 'package:noble/DataAccessLayer/Clients/story_client.dart';
import 'package:noble/DataAccessLayer/Models/story.dart';

class StoryRepo {
  var client = StoryClient();

  Future<List<Story>> getStories() async {
    var response = await client.getStories();

    if (response.isNotEmpty) {
      //json.decode(response.toString()).cast<Map<String, dynamic>>();
      return response.map<Story>((item) => Story.fromMap(item)).toList();
    }
    return [];
  }
}
