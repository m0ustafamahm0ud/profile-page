import 'package:get_it/get_it.dart';
import 'package:profile/core/network/network_info.dart';
import 'package:profile/profile_page/data/datasource/profile_remote_datasource.dart';
import 'package:profile/profile_page/data/datasource/profile_remote_datasource_impl.dart';
import 'package:profile/profile_page/data/repository/profile_repository_impl.dart';
import 'package:profile/profile_page/domain/repository/base_profile_repository.dart';
import 'package:profile/profile_page/domain/usecase/get_user_info.dart';
import 'package:profile/profile_page/presentation/controller/get_user_info_controller/get_user_info_bloc.dart';

final sl = GetIt.instance;

class ServiceLocator {
  void init() {
    // /// BLOC
    sl.registerFactory(() => GetUserInfoBloc(sl()));

    // /// USECASE
    sl.registerLazySingleton(() => GetUserInfoUsecase(sl()));

    //// NETWORK INFO
    sl.registerLazySingleton<NetworkInfo>(() => NetworkInfoImpl());

    // /// REPOSITORY
    sl.registerLazySingleton<BaseProfileRepository>(
        () => ProfileRepositoryImpl(sl(), sl()));

    // //// DATASOURCE
    sl.registerLazySingleton<ProfileRemoteDatasource>(
        () => ProfileRemoteDatasourceImpl());
  }
}
