
import 'package:flutter/material.dart';

class TimelineModel {
  final String id;
  final String date;
  final String title;
  final String description;
  final Color lineColor;
  final Color descriptionColor;
  final Color titleColor;

  const TimelineModel(
      {required this.id,
        required this.date,
        required this.title,
        required this.description,
        required this.lineColor,
        required this.descriptionColor,
        required this.titleColor});
}
