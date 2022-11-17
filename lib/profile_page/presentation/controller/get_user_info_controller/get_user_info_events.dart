import 'package:equatable/equatable.dart';

abstract class UserInfoEvent extends Equatable {
  const UserInfoEvent();

  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}

class GetUserInfoEvent extends UserInfoEvent {}
