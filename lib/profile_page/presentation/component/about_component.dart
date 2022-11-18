import 'package:animate_do/animate_do.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/utils/app_constance.dart';
import '../../../core/widgets/about_items.dart';
import '../../domain/entitry/user.dart';

class AboutComponent extends StatelessWidget {
  AboutComponent({super.key, required this.user});
  final User user;
  List<String> text = [
    'Age',
    'Languages:',
    'Lives in ',
    'From',
    'Truck type',
    'Trailer type',
    'Interests',
  ];

  List<String> icons = [
    'assets/images/user.svg',
    'assets/images/Component.svg',
    'assets/images/location-marker.svg',
    'assets/images/home.svg',
    'assets/images/truck.svg',
    'assets/images/truck (2).svg',
    'assets/images/emoji-happy.svg',
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppConstance.whiteColor,
      child: FadeIn(
        delay: const Duration(milliseconds: 450),
        child: Stack(
          alignment: Alignment.centerRight,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Text(
                    'About',
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: AppConstance.blackColor),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                AboutItem(
                    text: text[0],
                    information: user.age.toString(),
                    icon: icons[0]),
                const SizedBox(
                  height: 5,
                ),
                AboutItem(
                    text: text[1],
                    information: user.languages.join(','),
                    icon: icons[1]),
                const SizedBox(
                  height: 5,
                ),
                AboutItem(
                    text: text[2], information: user.livesIn, icon: icons[2]),
                const SizedBox(
                  height: 5,
                ),
                AboutItem(
                    text: text[3], information: user.from, icon: icons[3]),
                const SizedBox(
                  height: 5,
                ),
                AboutItem(
                    text: text[4], information: user.trunkType, icon: icons[4]),
                const SizedBox(
                  height: 5,
                ),
                AboutItem(
                    text: text[5],
                    information: user.trailerType,
                    icon: icons[5]),
                const SizedBox(
                  height: 5,
                ),
                AboutItem(
                    text: text[6],
                    information: user.interests.join(','),
                    icon: icons[6]),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
            Positioned(
              top: 40,
              right: 15,
              child: FadeInRight(
                delay: const Duration(milliseconds: 650),
                child: SvgPicture.asset(
                  'assets/images/Vector (1).svg',

                  height: 24,
                  width: 24,
                  fit: BoxFit.contain,
                  // color: primaryColor,
                  color: AppConstance.blueColor,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
