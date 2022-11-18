import 'package:flutter/material.dart';
import 'package:profile/profile_page/presentation/component/profile_cover.dart';
import '../../domain/entitry/user.dart';
import 'About_component.dart';
import 'friends_component.dart';
import 'name_and_photo.dart';

class ProfilePageBody extends StatelessWidget {
  const ProfilePageBody({super.key, required this.user});
  final User user;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Stack(
      children: [
        ProfileCover(
          coverPhotoUrl: user.backgroundPhotoUrl,
        ),
        ListView(
          // physics: const BouncingScrollPhysics(),
          padding: EdgeInsets.only(
              top: size.height / 4.5, bottom: 100), // 100 height of bottom bar
          children: [
            NameAndPhotoComponent(
              user: user,
            ),
            AboutComponent(
              user: user,
            ),
            FriendsComponent()
          ],
        ),
      ],
    );
  }
}
