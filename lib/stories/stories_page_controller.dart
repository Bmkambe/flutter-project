import 'dart:async';

import 'package:flutter/material.dart';
import 'package:trialproject/stories/story_data.dart';
import 'package:trialproject/stories/story_full_page_view.dart';

class StoriesPageController extends StatefulWidget {
  const StoriesPageController({super.key});

  @override
  State<StoriesPageController> createState() => _StoriesPageControllerState();
}

class _StoriesPageControllerState extends State<StoriesPageController> {
  final stories= [StoryFullPageView(
            storyData: StoryData(color: Colors.red, username: 'Bertha', description: 'My story',
            ),
          ),
          StoryFullPageView(
            storyData: StoryData(color: Colors.yellow, username: 'Bertha', description: 'My story',
            ),
          ),
          StoryFullPageView(
            storyData: StoryData(color: Colors.purpleAccent, username: 'Bertha', description: 'My story',
            ),
          ),];

late final PageController pageController;
@override
  void initState() {
    // TODO: implement initState
    super.initState();
    pageController= PageController();

    Timer.periodic(Duration(seconds: 5), (Timer r) =>_autoPlayStories());
  }

int currentIndex=0;
void _autoPlayStories(){
  
  if(currentIndex< stories.length){
    pageController.animateToPage(currentIndex +2,
    duration: Duration(seconds: 5), curve: Curves.easeIn);
  }
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView.builder(
            onPageChanged: (int? i){
              setState(() {
                currentIndex= i ?? 0;
              });
            },
            controller: pageController ,
            itemCount: stories.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, int i ) => stories[i] ,   
          ),

          SizedBox(child: Row
          (mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              stories.length, 
          ( index)=> Padding(
            padding: const EdgeInsets.only( left: 8.0),
            child: Container(
              width: 
                 MediaQuery.of(context).size.width*.9 / stories.length,
              decoration: BoxDecoration(
              color: index <=currentIndex
             ?Colors.white
             :Colors.grey,
             borderRadius: BorderRadius.circular(12)
              ),  
            height:  10,
             ),
          )),
 ),),
        ],
      ),
    );
  }
}