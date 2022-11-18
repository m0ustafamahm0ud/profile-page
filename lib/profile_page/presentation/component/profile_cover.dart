import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/svg.dart';
import 'package:profile/core/utils/app_constance.dart';

class ProfileCover extends StatelessWidget {
  const ProfileCover({super.key, required this.coverPhotoUrl});
  final String coverPhotoUrl;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      color: Colors.black,
      height: size.height / 3.5,
      child: Stack(
        alignment: Alignment.center,
        children: [
          CachedNetworkImage(
            imageUrl: coverPhotoUrl,
            placeholder: (context, url) =>
                const Center(child: CupertinoActivityIndicator()),
            fit: BoxFit.cover,
            width: size.width,
            height: size.height / 3.5,

            // ignore: prefer_const_constructors
            errorWidget: (context, url, error) => Center(
              child: const Icon(
                Icons.error,
                color: AppConstance.blueColor,
              ),
            ),
          ),
          Positioned(
            top: 45,
            left: 5,
            child: IconButton(
              // ignore: avoid_print
              onPressed: () => print('Pop'),
              // ignore: prefer_const_constructors
              icon: SvgPicture.asset(
                'assets/images/Group 8.2.svg',

                height: 28,
                width: 28,
                fit: BoxFit.contain,
                // color: primaryColor,
                color: AppConstance.whiteColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
