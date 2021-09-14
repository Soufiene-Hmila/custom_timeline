
import 'package:custom_timeline/src/model/timeline_model.dart';
import 'package:custom_timeline/src/util/timeline_painter.dart';
import 'package:flutter/material.dart';


class TimelineElement extends StatelessWidget {
  final Color lineColor;
  final Color backgroundColor;
  final TimelineModel model;
  final bool firstElement;
  final bool lastElement;
  final Animation<double> controller;
  final Color headingColor;
  final Color descriptionColor;

  const TimelineElement(
      {Key? key, required this.lineColor,
        required this.backgroundColor,
        required this.model,
        this.firstElement = false,
        this.lastElement = false,
        required this.controller,
        required this.headingColor,
        required this.descriptionColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 100.0,
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                  width: 60,
                  margin: const EdgeInsets.only(top: 32),
                  child: Text(model.date,
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: headingColor))),
              AnimatedBuilder(animation: controller,
                builder: (context, widget) => SizedBox(
                    width: 30.0,
                    child: CustomPaint(
                        painter: TimelinePainter(
                            lineColor: lineColor,
                            backgroundColor: backgroundColor,
                            firstElement: firstElement,
                            lastElement: lastElement,
                            controller: controller))),
              ),
              Expanded(child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                        margin: const EdgeInsets.only(top: 20),
                        child: Text(model.title.length > 47
                                ? model.title.substring(0, 47) + "..."
                                : model.title,
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: headingColor))),
                    Expanded(
                        child: Text(model.description.length > 50
                                ? model.description.substring(0, 75) + "..."
                                : model.description,
                            style: TextStyle(color: descriptionColor)))
                  ]))
            ]));
  }
}