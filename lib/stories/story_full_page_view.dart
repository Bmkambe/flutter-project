import 'package:flutter/material.dart';
import 'package:trialproject/stories/story_data.dart';

class StoryFullPageView extends StatelessWidget {
  const StoryFullPageView({super.key, this.storyData});
  final StoryData? storyData;

  @override
  Widget build(BuildContext context) {
    return  Material(
      child: Stack(children: [

      SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context). size.width,
        child: DecoratedBox(decoration: BoxDecoration(color: storyData?.color))),
      

        Align(
          alignment: Alignment.bottomCenter,
          child: Column(
            mainAxisSize: MainAxisSize.min,
          children: [
            Text(storyData?.username ?? 'user name should be here'),
            Text(storyData?. description ?? ''),
          ],
        ),)
      ],),
    );
  }
}