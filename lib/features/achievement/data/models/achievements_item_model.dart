import 'package:flutter/material.dart';

class AchievementsItemModel {
  final String title;
  final String description;
  final String image;
  final double rating;
  final Color color;

  AchievementsItemModel({
    required this.title,
    required this.description,
    required this.image,
    required this.rating,
    required this.color,
  });
}

List<AchievementsItemModel> achievementsList = [
  AchievementsItemModel(
    title: 'Studious',
    description: 'You have completed this lesson 10 times.',
    image: 'assets/images/studious.png',
    rating: 3,
    color: const Color(0xff9BD2FC),
  ),
  AchievementsItemModel(
    title: 'Quickie',
    description:
        'You have completed this quiz in less than 3 minutes, 10 times.',
    image: 'assets/images/quickie.png',
    rating: 3,
    color: const Color(0xffF1C40F),
  ),
  AchievementsItemModel(
    title: 'Ambitious',
    description: 'You have achieved 15 milestones.',
    image: 'assets/images/ambitious.png',
    rating: 3,
    color: const Color(0xff16A085),
  ),
  AchievementsItemModel(
    title: 'Perfectionist',
    description: 'you have scored 100% on quizzes 20 times.',
    image: 'assets/images/perfectionist.png',
    rating: 3,
    color: const Color(0xff2980B9),
  ),
];
