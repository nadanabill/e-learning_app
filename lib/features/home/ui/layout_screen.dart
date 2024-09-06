import 'package:e_learning/core/constants/app_assets.dart';
import 'package:e_learning/core/constants/app_strings.dart';
import 'package:e_learning/features/home/ui/home_screen.dart';
import 'package:flutter/material.dart';

class LayoutScreen extends StatefulWidget {
  const LayoutScreen({super.key});

  @override
  State<LayoutScreen> createState() => _LayoutScreenState();
}

class _LayoutScreenState extends State<LayoutScreen> {
  int selectedIndex = 0;
  List<Widget> screens =  [
    const HomeScreen(),
    const Text('Search'),
    const Text('achievement'),
    const Text('profile'),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: screens[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index){
          setState(() {
            selectedIndex = index;
          });
        },
        currentIndex: selectedIndex,
        showUnselectedLabels: true,
        useLegacyColorScheme: false,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Image.asset(AppImages.learn), label: AppStrings.learn),
          BottomNavigationBarItem(
            icon: Image.asset(AppImages.search),
            label: AppStrings.search,
          ),
          BottomNavigationBarItem(
            icon: Image.asset(AppImages.achievement),
            label: AppStrings.achievement,
          ),
          BottomNavigationBarItem(
            icon: Image.asset(AppImages.profile),
            label: AppStrings.profile,
          ),
        ],
      ),
    );
  }
}
