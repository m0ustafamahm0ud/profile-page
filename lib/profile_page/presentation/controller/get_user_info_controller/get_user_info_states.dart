import 'package:equatable/equatable.dart';
import 'package:profile/core/utils/enums.dart';

import '../../../domain/entitry/user.dart';

class GetUserInfoStates extends Equatable {
  final User user;
  final RequestState requestState;

  const GetUserInfoStates(
      {this.user = const User(
        id: 'id',
        age: 0,
        fullName: '',
        userName: '',
        languages: [],
        interests: [],
        livesIn: '',
        from: '',
        trunkType: '',
        trailerType: '',
        photoUrl: '',
        backgroundPhotoUrl: '',
      ),
      this.requestState = RequestState.loading});

  @override
  // TODO: implement props
  List<Object?> get props => [user, requestState];
}
