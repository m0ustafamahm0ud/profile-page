import 'package:profile/profile_page/domain/entitry/user.dart';

class UserModel extends User {
  const UserModel({
    required super.id,
    required super.age,
    required super.fullName,
    required super.userName,
    required super.languages,
    required super.interests,
    required super.livesIn,
    required super.from,
    required super.trunkType,
    required super.trailerType,
    required super.photoUrl,
    required super.backgroundPhotoUrl,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
        id: json['id'],
        age: json['age'],
        fullName: json['fullName'],
        userName: json['userName'],
        languages: List<String>.from(json['languages']),
        interests: List<String>.from(json['interests']),
        livesIn: json['livesIn'],
        from: json['from'],
        photoUrl: json['photoUrl'],
        trunkType: json['trunkType'],
        trailerType: json['trailerType'],
        backgroundPhotoUrl: json['backgroundPhotoUrl'],
      );

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'age': age,
      'fullName': fullName,
      'userName': userName,
      'languages': languages,
      'interests': interests,
      'livesIn': livesIn,
      'from': from,
      'photoUrl': photoUrl,
      'trunkType': trunkType,
      'trailerType': trailerType,
      'backgroundPhotoUrl': backgroundPhotoUrl,
    };
  }
}
