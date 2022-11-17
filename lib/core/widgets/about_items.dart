import 'package:flutter/cupertino.dart';

import 'package:flutter_svg/svg.dart';

import '../utils/app_constance.dart';

class AboutItem extends StatelessWidget {
  const AboutItem(
      {super.key,
      required this.text,
      required this.information,
      required this.icon});
  final String text;
  final String information;
  final String icon;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SvgPicture.asset(
            icon,
            height: 14,
            width: 14,
            fit: BoxFit.contain,
            // color: primaryColor,
            color: AppConstance.greyColorThick,
          ),
          SizedBox(
            width: 8,
          ),
          Text(
            text + ': ',
            style: TextStyle(fontSize: 14, color: AppConstance.blackColor),
          ),
          Text(
            information,
            style: TextStyle(fontSize: 14, color: AppConstance.blueColor),
          ),
        ],
      ),
    );
  }
}
