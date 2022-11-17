import 'package:flutter/material.dart';

import 'package:flutter_svg/svg.dart';

class BottomNavBarItem extends StatelessWidget {
  const BottomNavBarItem(
      {super.key,
      required this.icon,
      required this.index,
      required this.currentIndex});
  final String icon;
  final int index;
  final int currentIndex;
  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      icon,
      height: index.isOdd ? 24 : 22,
      width: index.isOdd ? 26 : 22,
      fit: BoxFit.contain,
      // color: primaryColor,
      color: currentIndex == index ? Colors.blue : Colors.black,
    );
  }
}
