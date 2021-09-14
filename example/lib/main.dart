import 'package:custom_timeline/custom_timeline.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  final List<TimelineModel> listTimelineModel = [
    const TimelineModel(
        id: "1",
        date: "10:35 AM",
        description: "Reunion Test Widget",
        lineColor: Colors.black87,
        descriptionColor:  Colors.black87,
        titleColor:  Colors.black87,
        title: "Reunion"),
    const TimelineModel(
        id: "2",
        date: "10:45 AM",
        description: "Reunion Test Widget",
        lineColor:  Colors.black87,
        descriptionColor:  Colors.black87,
        titleColor:  Colors.black87,
        title: "Reunion"),
    const TimelineModel(
        id: "3",
        date: "15:35 PM",
        description: "Reunion Test Widget",
        lineColor:  Colors.black87,
        descriptionColor:  Colors.black87,
        titleColor:  Colors.black87,
        title: "Reunion"),
    const TimelineModel(
        id: "4",
        date: "16:00 PM",
        description: "Reunion Test Widget",
        lineColor:  Colors.black87,
        descriptionColor:  Colors.black87,
        titleColor:  Colors.black87,
        title: "Reunion"),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Custom Timeline App')),
        body: SingleChildScrollView(
            child: CustomTimeline(
              timelineList: listTimelineModel,
              backgroundColor: Colors.black87,)),
      ),
    );
  }
}
