import 'dart:ffi';

import 'package:profile/profile_page/data/model/user_model.dart';

abstract class ProfileRemoteDatasource {
  Future<UserModel> getUserInfo(String id);
  // Future<Void> updateUserInfo(UserModel userModel);
}
