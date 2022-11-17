import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:profile/core/widgets/friend_avatar.dart';

import '../../../core/utils/app_constance.dart';

class FriendsComponent extends StatelessWidget {
  FriendsComponent({super.key});
  List<String> photos = [
    'https://images.unsplash.com/photo-1631798262744-5c15818c2e92?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80',
    'https://images.unsplash.com/photo-1619722087489-f0b1a6fdbc6d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80',
    'https://images.unsplash.com/photo-1502654253-6a533f295544?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80',
    'https://images.unsplash.com/photo-1616432043562-3671ea2e5242?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80',
    'https://images.unsplash.com/photo-1497781351393-2fce139ef4cb?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1171&q=80',
    'https://images.unsplash.com/photo-1631798262744-5c15818c2e92?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80',
    'https://images.unsplash.com/photo-1619722087489-f0b1a6fdbc6d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80',
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.red,
      color: AppConstance.whiteColor,

      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.only(left: 20, right: 20),

      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              Text(
                'Friends',
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: AppConstance.blackColor),
              ),
              Text(
                '(400)',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                    color: AppConstance.greyColorLight),
              ),
              Spacer(),
              Text(
                'See all',
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                    color: AppConstance.blueColor,
                    decoration: TextDecoration.underline),
              ),
            ],
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            physics: const BouncingScrollPhysics(),
            child: Row(
              children: List.generate(
                  photos.length,
                  (index) => FadeInDown(
                        from: 5,
                        delay: Duration(milliseconds: 150 * index),
                        child: FriendAvatar(
                          friendPhoto: photos[index],
                        ),
                      )),
            ),
          )
        ],
      ),
    );
  }
}
