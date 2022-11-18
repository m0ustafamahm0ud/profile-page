import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:profile/profile_page/presentation/component/bottom_nav_bar.dart';

import '../../../core/utils/enums.dart';
import '../../../core/utils/services.dart';
import '../../../core/widgets/loading_widget.dart';

import '../component/profile_page_body.dart';
import '../controller/get_user_info_controller/get_user_info_bloc.dart';
import '../controller/get_user_info_controller/get_user_info_events.dart';
import '../controller/get_user_info_controller/get_user_info_states.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => GetUserInfoBloc(
        sl(),
      )..add(GetUserInfoEvent()),
      child: Scaffold(
        body: BlocBuilder<GetUserInfoBloc, GetUserInfoStates>(
          builder: (BuildContext context, state) {
            switch (state.requestState) {
              case RequestState.loading:
                return const LoadingWidget();
              case RequestState.error:
                return const Center(
                  child: Text('No Internet.'),
                );
              case RequestState.loaded:
                return Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    ProfilePageBody(user: state.user),
                    AppBottomNavBar(),
                  ],
                );
            }
          },
        ),
      ),
    );
  }
}
