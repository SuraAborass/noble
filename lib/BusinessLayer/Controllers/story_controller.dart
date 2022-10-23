// ignore_for_file: avoid_print

import 'package:get/get.dart';
import 'package:noble/BusinessLayer/Repositories/story_repo.dart';
import 'package:noble/DataAccessLayer/Models/story.dart';
import 'package:story_view/controller/story_controller.dart';
import 'package:story_view/widgets/story_view.dart';

class StoriesController extends GetxController {
  late List<Story> stories = [];
  var storyRepo = StoryRepo();
  var isLoading = false.obs;
  late List<StoryItem?> storyviews = [];
  final StoryController storyviewcontroller = StoryController();
  @override
  void onInit() async {
    isLoading.value = true;
    update();
    stories = await storyRepo.getStories();
    for (var element in stories) {
      print(element.image);

      storyviews.add(StoryItem.pageImage(
          url: element.image, controller: storyviewcontroller));
    }
    //print(stories);
    isLoading.value = false;
    update();
    super.onInit();
  }
}
