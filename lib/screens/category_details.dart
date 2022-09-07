import 'package:flutter/material.dart';
import 'package:html/parser.dart';
import 'package:saheefa/model/Categories/SingleCategoryNodel.dart';
import 'package:tiktoklikescroller/tiktoklikescroller.dart';

class CategoryDetails extends StatelessWidget {
  final SingleCategoryModel singleCategoryModel;

  const CategoryDetails({Key key, this.singleCategoryModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Controller controller = Controller()
      ..addListener((event) {
        _handleCallbackEvent(event.direction, event.success);
      });
    return TikTokStyleFullPageScroller(
      contentSize: singleCategoryModel.data.posts.length,

      swipePositionThreshold: 0.2,
      // ^ the fraction of the screen needed to scroll
      swipeVelocityThreshold: 2000,
      // ^ the velocity threshold for smaller scrolls
      animationDuration: const Duration(milliseconds: 400),
      // ^ how long the animation will take
      controller: controller,
      // ^ registering our own function to listen to page changes
      builder: (BuildContext context, int index) {
        final document =
            parse(singleCategoryModel.data.posts[index].postContent);

        return Container(
          color: Colors.blue,
          child: Center(
            child: Text(
              parse(document.body.text).documentElement.text,
              style: const TextStyle(fontSize: 12, color: Colors.white),
            ),
          ),
        );
      },
    );
  }

  void _handleCallbackEvent(ScrollDirection direction, ScrollSuccess success,
      {int currentIndex}) {
    print(
        "Scroll callback received with data: {direction: $direction, success: $success and index: ${currentIndex ?? 'not given'}}");
  }
}
