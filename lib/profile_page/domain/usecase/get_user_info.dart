import 'package:dartz/dartz.dart';
import 'package:profile/profile_page/domain/repository/base_profile_repository.dart';

import '../../../core/failure/failure.dart';
import '../entitry/user.dart';

class GetUserInfoUsecase {
  final BaseProfileRepository baseProfileRepository;

  GetUserInfoUsecase(this.baseProfileRepository);

  Future<Either<Failure, User>> call(String id) async {
    return await baseProfileRepository.getUserInfo(id);
  }
}
