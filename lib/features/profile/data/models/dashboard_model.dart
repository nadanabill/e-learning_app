import 'package:e_learning/core/constants/app_assets.dart';

enum DashboardType { New, Action, Non }

class DashboardModel {
  final String title;
  final String image;
  final DashboardType type;
  int? number;
  final String routeName;

  DashboardModel({
    required this.title,
    required this.image,
    required this.type,
    required this.routeName,
    this.number,
  });
}

List<DashboardModel> dashboardList = [
  DashboardModel(
    title: 'Settings',
    image: AppSvgs.settingsIcon,
    type: DashboardType.Non,
    routeName: '/settings',
  ),
  DashboardModel(
    title: 'Achievements',
    image: AppSvgs.achievementsIcon,
    type: DashboardType.New,
    number: 2,
    routeName: '/achievements',
  ),
  DashboardModel(
    title: 'Privacy',
    image: AppSvgs.privacyIcon,
    type: DashboardType.Action,
    routeName: '/privacy',
  ),
];
