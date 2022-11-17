import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:profile/core/utils/enums.dart';
import 'package:profile/profile_page/domain/usecase/get_user_info.dart';
import 'package:profile/profile_page/presentation/controller/get_user_info_controller/get_user_info_events.dart';
import 'package:profile/profile_page/presentation/controller/get_user_info_controller/get_user_info_states.dart';
import '../../../../core/utils/services.dart';

class GetUserInfoBloc extends Bloc<UserInfoEvent, GetUserInfoStates> {
  final GetUserInfoUsecase userInfoUsecase;

  GetUserInfoBloc(
    this.userInfoUsecase,
  ) : super(const GetUserInfoStates()) {
    on<GetUserInfoEvent>(
      (event, emit) async {
        final result = await GetUserInfoUsecase(sl()).call('1');
        result.fold(
          (l) {
            emit(
              const GetUserInfoStates(
                requestState: RequestState.error,
              ),
            );
          },
          (r) {
            emit(
              GetUserInfoStates(
                requestState: RequestState.loaded,
                user: r,
              ),
            );
          },
        );
      },
    );
  }
}
