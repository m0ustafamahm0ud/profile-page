import 'package:profile/core/error/exceptions.dart';
import 'package:profile/core/network/network_info.dart';
import 'package:profile/profile_page/data/datasource/profile_remote_datasource.dart';
import 'package:profile/profile_page/domain/entitry/user.dart';
import 'package:profile/core/failure/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:profile/profile_page/domain/repository/base_profile_repository.dart';

class ProfileRepositoryImpl extends BaseProfileRepository {
  final ProfileRemoteDatasource profileRemoteDatasource;
  final NetworkInfo networkInfo;
  ProfileRepositoryImpl(this.profileRemoteDatasource, this.networkInfo);
  @override
  Future<Either<Failure, User>> getUserInfo(String id) async {
    if (await networkInfo.isConnected) {
      print('true');
      final usermodel = await profileRemoteDatasource.getUserInfo(id);
      try {
        return Right(usermodel);
      } on ServerException catch (failure) {
        return Left(ServerFailure(failure.errorMsg));
      }
    } else {
      print('false');

      return const Left(ServerFailure('no internet connection'));
    }
  }
}
