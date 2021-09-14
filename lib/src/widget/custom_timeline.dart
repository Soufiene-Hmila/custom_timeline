

import 'package:custom_timeline/custom_timeline.dart';
import 'package:flutter/material.dart';

class CustomTimeline extends StatefulWidget {

  final Color backgroundColor;
  final List<TimelineModel> timelineList;

  const CustomTimeline({Key? key, required this.timelineList, required this.backgroundColor,}) : super(key: key);

  @override
  CustomTimelineState createState() => CustomTimelineState();
}

class CustomTimelineState extends State<CustomTimeline> with SingleTickerProviderStateMixin {

  late Animation<double> animation;
  late AnimationController controller;
  double fraction = 0.0;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(duration: const Duration(milliseconds: 1000), vsync: this);
    controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: widget.timelineList.map((element) =>
          TimelineElement(
              lineColor: element.lineColor,
              backgroundColor: widget.backgroundColor,
              model: element,
              firstElement: widget.timelineList.indexOf(element) == 0,
              lastElement: widget.timelineList.length == widget.timelineList.indexOf(element) + 1,
              controller: controller,
              headingColor: element.titleColor,
              descriptionColor: element.descriptionColor)).toList(),
    );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}


