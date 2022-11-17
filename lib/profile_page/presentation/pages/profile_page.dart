import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:profile/core/utils/app_constance.dart';
import 'package:profile/core/widgets/custom_button.dart';

import 'package:profile/profile_page/presentation/component/About_component.dart';
import 'package:profile/profile_page/presentation/component/bottom_nav_bar.dart';
import 'package:profile/profile_page/presentation/component/friends_component.dart';
import 'package:profile/profile_page/presentation/component/name_and_photo.dart';

import '../../../core/utils/enums.dart';
import '../../../core/utils/services.dart';
import '../component/profile_cover.dart';
import '../controller/get_user_info_controller/get_user_info_bloc.dart';
import '../controller/get_user_info_controller/get_user_info_events.dart';
import '../controller/get_user_info_controller/get_user_info_states.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return BlocProvider(
      create: (BuildContext context) => GetUserInfoBloc(
        sl(),
      )..add(GetUserInfoEvent()),
      child: Scaffold(
        body: BlocBuilder<GetUserInfoBloc, GetUserInfoStates>(
          builder: (BuildContext context, state) {
            switch (state.requestState) {
              case RequestState.loading:
                return const Center(
                  child: CupertinoActivityIndicator(
                    color: AppConstance.blueColor,
                  ),
                );
              case RequestState.error:
                return const Center(
                  child: Text('No Internet '),
                );
              case RequestState.loaded:
                return Stack(
                  children: [
                    ProfileCover(
                      coverPhotoUrl: state.user.backgroundPhotoUrl,
                    ),
                    ListView(
                      // physics: const BouncingScrollPhysics(),
                      padding:
                          EdgeInsets.only(top: size.height / 4.5, bottom: 20),
                      children: [
                        NameAndPhotoComponent(
                          user: state.user,
                        ),
                        AboutComponent(
                          user: state.user,
                        ),
                        FriendsComponent()
                      ],
                    ),
                  ],
                );
            }
          },
        ),
        bottomNavigationBar: AppBottomNavBar(),
      ),
    );
  }
}
