import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';
import 'package:flutter/material.dart';
import 'package:travel_lens/resources/app_colors.dart';

class BottomNavbarWidget extends StatefulWidget {
  const BottomNavbarWidget({super.key});

  @override
  State<BottomNavbarWidget> createState() => _BottomNavbarWidgetState();
}

class _BottomNavbarWidgetState extends State<BottomNavbarWidget> {
  int _bottomNavIndex = 0;

  // Icon list for the navigation bar
  final iconList = <IconData>[
    Icons.home,
    Icons.search,
    Icons.favorite,
    Icons.person,
  ];
  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
      onTap: (index) {
        setState(() {
          _bottomNavIndex = index;
        });
      },
      buttonBackgroundColor: AppColors.kBlackColor,
      backgroundColor: AppColors.kBackgroundColor,
      color: AppColors.kDarkGreyColor.withValues(alpha: 0.1),
      items: [
        CurvedNavigationBarItem(
          child: Icon(
            size: _bottomNavIndex == 0 ? 30 : 26,
            Icons.home_outlined,
            color: _bottomNavIndex == 0
                ? AppColors.kWhiteColor
                : AppColors.kDarkGreyColor,
          ),
        ),
        CurvedNavigationBarItem(
          child: Icon(
            Icons.my_location_sharp,
            size: _bottomNavIndex == 1 ? 30 : 26,
            color: _bottomNavIndex == 1
                ? AppColors.kWhiteColor
                : AppColors.kDarkGreyColor,
          ),
        ),
        CurvedNavigationBarItem(
          child: Icon(
            Icons.person_outline,
            size: _bottomNavIndex == 2 ? 30 : 26,
            color: _bottomNavIndex == 2
                ? AppColors.kWhiteColor
                : AppColors.kDarkGreyColor,
          ),
        ),
        CurvedNavigationBarItem(
          child: Icon(
            size: _bottomNavIndex == 3 ? 30 : 26,
            Icons.favorite_outline,
            color: _bottomNavIndex == 3
                ? AppColors.kWhiteColor
                : AppColors.kDarkGreyColor,
          ),
        ),
      ],
    );
  }
}
