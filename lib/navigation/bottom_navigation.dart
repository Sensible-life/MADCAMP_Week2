import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../colors.dart';

class BottomNavigation extends StatelessWidget {
  final int currentIndex;
  final ValueChanged<int> onTap;

  const BottomNavigation({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: AppColors.bottomBar,
      currentIndex: currentIndex,
      // 현재 선택된 인덱스
      selectedLabelStyle: const TextStyle(
          fontSize: 10,
          fontWeight: FontWeight.bold,
          height: 2
      ),
      unselectedLabelStyle: const TextStyle(
        fontSize: 10,
        fontWeight: FontWeight.normal,
      ),
      onTap: onTap,
      items: [
        BottomNavigationBarItem(
          icon: Padding(
            padding: const EdgeInsets.only(top: 6.0),
            child: SizedBox(
              width: 17,
              height: 17,
              child: SvgPicture.asset(
                'assets/images/home_unselected.svg',
              ),
            ),
          ),
          activeIcon: Padding(
            padding: const EdgeInsets.only(top: 6.0),
            child: SizedBox(
              width: 17,
              height: 17,
              child: SvgPicture.asset(
                'assets/images/home_selected.svg',
              ),
            ),
          ),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Padding(
            padding: const EdgeInsets.only(top: 6.0),
            child: SizedBox(
              width: 17,
              height: 17,
              child: SvgPicture.asset(
                'assets/images/write_unselected.svg',
              ),
            ),
          ),
          activeIcon: Padding(
            padding: const EdgeInsets.only(top: 6.0),
            child: SizedBox(
              width: 17,
              height: 17,
              child: SvgPicture.asset(
                'assets/images/write_selected.svg',
              ),
            ),
          ),
          label: 'Write',
        ),
        BottomNavigationBarItem(
          icon: Padding(
            padding: const EdgeInsets.only(top: 6.0),
            child: SizedBox(
              width: 17,
              height: 17,
              child: SvgPicture.asset(
                'assets/images/camera_unselected.svg',
              ),
            ),
          ),
          activeIcon: Padding(
            padding: const EdgeInsets.only(top: 6.0),
            child: SizedBox(
              width: 17,
              height: 17,
              child: SvgPicture.asset(
                'assets/images/camera_selected.svg',
              ),
            ),
          ),
          label: 'Camera',
        ),
        BottomNavigationBarItem(
          icon: Padding(
            padding: const EdgeInsets.only(top: 6.0),
            child: SizedBox(
              width: 17,
              height: 17,
              child: SvgPicture.asset(
                'assets/images/person_unselected.svg',
              ),
            ),
          ),
          activeIcon: Padding(
            padding: const EdgeInsets.only(top: 6.0),
            child: SizedBox(
              width: 17,
              height: 17,
              child: SvgPicture.asset(
                'assets/images/person_selected.svg',
              ),
            ),
          ),
          label: 'Profile',
        ),
      ],
    );
  }
}