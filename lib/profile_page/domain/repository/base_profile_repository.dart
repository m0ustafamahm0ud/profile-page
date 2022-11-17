import 'package:dartz/dartz.dart';
import 'package:profile/core/failure/failure.dart';
import 'package:profile/profile_page/domain/entitry/user.dart';

abstract class BaseProfileRepository {
  Future<Either<Failure, User>> getUserInfo(String id);
  // Future<Either<Failure, Unit>> updateUserInfo(User user);
}
