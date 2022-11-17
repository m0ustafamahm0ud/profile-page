import 'package:animate_do/animate_do.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:profile/core/widgets/about_items.dart';
import 'package:profile/core/widgets/custom_button.dart';
import 'package:profile/core/widgets/rating_area.dart';
import 'package:profile/profile_page/domain/entitry/user.dart';

import '../../../core/utils/app_constance.dart';

class NameAndPhotoComponent extends StatelessWidget {
  NameAndPhotoComponent({super.key, required this.user});
  List<String> items = ['Friends', 'Meetings', 'Friendly'];
  List<String> values = ['400', '40', '4.8'];
  // final String photo;
  final User user;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          padding: const EdgeInsets.only(left: 20, right: 20),
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(
                  25,
                ),
                topRight: Radius.circular(25)),
            color: AppConstance.whiteColor,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                // STARS
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Spacer(),
                  SizedBox(
                    height: 100,
                    width: size.width / 2,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        /// stars
                        FadeIn(
                            delay: const Duration(milliseconds: 350),
                            child: const RatingArea()),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: List.generate(
                            items.length,
                            (index) => FadeIn(
                              delay: const Duration(milliseconds: 450),
                              child: Container(
                                padding:
                                    const EdgeInsets.only(right: 15, top: 0),
                                // height: 50,
                                // width: 50,

                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  // ignore: prefer_const_literals_to_create_immutables
                                  children: [
                                    Text(
                                      values[index],
                                      style: const TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold,
                                          color: AppConstance.blackColor),
                                    ),
                                    Text(
                                      items[index],
                                      style: const TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.normal,
                                          color: AppConstance.blackColor),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
              // FULL NAME
              FadeIn(
                delay: const Duration(milliseconds: 200),
                child: Text(
                  user.fullName,
                  style: const TextStyle(
                      fontSize: 28,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.bold,
                      color: AppConstance.blackColor),
                ),
              ),

              /// USERNAME
              Text(
                '@${user.userName}',
                style: const TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: 16,
                    color: AppConstance.greyColorLight),
              ),

              const SizedBox(
                height: 15,
              ),

              /// BUTTONS
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FadeIn(
                    delay: const Duration(milliseconds: 350),
                    child: const CustomButton(
                        text: 'Add as Friend',
                        icon: 'assets/images/user-plus.svg'),
                  ),
                  const Spacer(),
                  FadeIn(
                    delay: const Duration(milliseconds: 450),
                    child: const CustomButton(
                        text: 'Message', icon: 'assets/images/Group 2.1.svg'),
                  )
                ],
              ),
              const SizedBox(
                height: 15,
              ),
            ],
          ),
        ),

        //// PHOTO
        Positioned(
          top: -55,
          left: 10,
          child: FadeInDown(
            from: 10,
            delay: const Duration(milliseconds: 250),
            child: Container(
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: AppConstance.whiteColor,
              ),
              height: 150,
              width: 150,
              padding: const EdgeInsets.all(2),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: CachedNetworkImage(
                  imageUrl: user.photoUrl,
                  placeholder: (context, url) =>
                      const Center(child: CupertinoActivityIndicator()),
                  fit: BoxFit.cover,
                  width: size.width,
                  height: size.height,
                  // ignore: prefer_const_constructors
                  errorWidget: (context, url, error) => Center(
                    child: const Icon(
                      Icons.error,
                      color: AppConstance.blueColor,
                    ),
                  ),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
