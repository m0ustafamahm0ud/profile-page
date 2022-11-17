import 'dart:ffi';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:profile/profile_page/data/datasource/profile_remote_datasource.dart';
import 'package:profile/profile_page/data/model/user_model.dart';

class ProfileRemoteDatasourceImpl extends ProfileRemoteDatasource {
  final firebase = FirebaseFirestore.instance;
  @override
  Future<UserModel> getUserInfo(String id) async {
    return await firebase.collection('Users').doc(id).get().then(
          (value) => UserModel.fromJson(
            value.data()!,
          ),
        );
  }

  // @override
  // Future<Void> updateUserInfo(UserModel userModel) {
  //   // TODO: implement updateUserInfo
  //   throw UnimplementedError();
  // }
}
