import 'package:e_learning/core/constants/app_assets.dart';
import 'package:flutter/material.dart';

class LearnModel {
  final String name;
  final String image;
  final int progress;
  final int total;
  final int level;
  final String time;
  final Color mainColor;
  final Color secondaryColor;

  LearnModel({
    required this.name,
    required this.image,
    required this.progress,
    required this.total,
    required this.level,
    required this.time,
    required this.mainColor,
    required this.secondaryColor,
  });
}

List<LearnModel> learnList = [
  LearnModel(
    name: 'Introduction',
    image: AppImages.handshake,
    progress: 9,
    total: 50,
    level: 1,
    time: '1 Hour 30 Minutes',
    mainColor: const Color(0xff8BC34A),
    secondaryColor: const Color(0xff11998E),
  ),
  LearnModel(
    name: 'Grammar',
    image: AppImages.bookBookmark,
    progress: 5,
    total: 40,
    level: 2,
    time: '1 Hour 45 Minutes',
    mainColor: const Color(0xffFFA000),
    secondaryColor: const Color(0xffBB6414),
  ),
  LearnModel(
    name: 'Vocabulary',
    image: AppImages.fire,
    progress: 2,
    total: 50,
    level: 2,
    time: '1 Hour 2 Minutes',
    mainColor: const Color(0xffD72714),
    secondaryColor: const Color(0xff9D1515),
  ),
];
