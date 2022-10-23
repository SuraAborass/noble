import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../BusinessLayer/Controllers/story_controller.dart';
import '../stories/story_item_rect.dart';
import '../stories/story_item_shimmer.dart';

import 'package:story_view/widgets/story_view.dart';

class LatestStories extends StatelessWidget {
  final StoriesController storiesController = Get.find();

  LatestStories({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
        init: storiesController,
        builder: (_) {
          return storiesController.isLoading.value
              ? SizedBox(
                  height: 160,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 5,
                      itemBuilder: (_, index) {
                        return const StoryItemShimmer();
                      }))
              : SizedBox(
                  height: 160,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: storiesController.stories.length,
                    itemBuilder: (context, i) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: 100,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20)),
                          child: InkWell(
                              onTap: () {
                                Get.to(StoryView(
                                  storyItems: storiesController.storyviews,
                                  controller:
                                      storiesController.storyviewcontroller,
                                  onStoryShow: (s) {},
                                  onComplete: () {
                                    Get.back();
                                  },
                                ));
                              },
                              child: StoryItemRect(
                                  image: storiesController.stories[i].image)),
                        ),
                      );
                    },
                  ),
                );
        });
  }
}
