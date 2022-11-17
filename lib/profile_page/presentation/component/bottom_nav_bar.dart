import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

import 'package:flutter_svg/svg.dart';
import 'package:profile/core/utils/app_constance.dart';
import 'package:profile/core/widgets/notification_dot.dart';

import '../../../core/widgets/bottom_nav_bar_item.dart';

class AppBottomNavBar extends StatelessWidget {
  AppBottomNavBar({super.key});
  int index = 3;
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_literals_to_create_immutables
    return Container(
      height: 80,
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(15),
            topRight: Radius.circular(15),
          ),
          color: AppConstance.whiteColor,
          boxShadow: [
            BoxShadow(color: AppConstance.blackColor, blurRadius: 2),
          ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Spacer(),
          GestureDetector(
            child: Stack(
              clipBehavior: Clip.none,
              alignment: Alignment.topRight,
              children: [
                BottomNavBarItem(
                  icon: 'assets/images/Group 2.2.svg',
                  index: 0,
                  currentIndex: index,
                ),
                Positioned(
                  top: -8,
                  right: -12,
                  child: FadeIn(
                    delay: const Duration(milliseconds: 650),
                    child: const NotificationDot(
                      count: 2,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Spacer(),
          GestureDetector(
            child: BottomNavBarItem(
              icon: 'assets/images/Group.svg',
              index: 1,
              currentIndex: index,
            ),
          ),
          const Spacer(),
          CircleAvatar(
            backgroundColor: Colors.grey.withOpacity(0.1),
            radius: 25,
            child: SvgPicture.asset(
              'assets/images/Path.svg',
              height: 25,
              width: 25,
              fit: BoxFit.contain,
              // color: Colors.red,
            ),
          ),
          const Spacer(),
          GestureDetector(
            child: Stack(
              clipBehavior: Clip.none,
              alignment: Alignment.topRight,
              children: [
                BottomNavBarItem(
                  icon: 'assets/images/Group 2.1.svg',
                  index: 2,
                  currentIndex: index,
                ),
                Positioned(
                  top: -8,
                  right: -12,
                  child: FadeIn(
                    delay: const Duration(milliseconds: 650),
                    child: const NotificationDot(
                      count: 1,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Spacer(),
          GestureDetector(
            child: BottomNavBarItem(
              icon: 'assets/images/Group (1).svg',
              index: 3,
              currentIndex: index,
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
