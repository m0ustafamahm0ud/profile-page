import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/animation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../utils/app_constance.dart';

class FriendAvatar extends StatelessWidget {
  const FriendAvatar({super.key, required this.friendPhoto});
  final String friendPhoto;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      // height: 80,
      width: 80,
      // color: Colors.amber,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 10,
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(40),
            child: CachedNetworkImage(
              imageUrl: friendPhoto,
              placeholder: (context, url) =>
                  const Center(child: CupertinoActivityIndicator()),
              fit: BoxFit.cover,

              width: 60,
              height: 60,
              // ignore: prefer_const_constructors
              errorWidget: (context, url, error) => Center(
                child: const Icon(
                  Icons.error,
                  color: AppConstance.blueColor,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            'Beer Beer Beer Beer Butterfly',
            style: TextStyle(
              fontSize: 11,
              color: AppConstance.greyColorLight,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
