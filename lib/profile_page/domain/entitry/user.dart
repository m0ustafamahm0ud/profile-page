import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:equatable/equatable.dart';

class User extends Equatable {
  final String id;
  final int age;
  final String fullName;
  final String userName;
  final List<String> languages;
  final List<String> interests;
  final String livesIn;
  final String from;
  final String trunkType;
  final String trailerType;
  final String photoUrl;
  final String backgroundPhotoUrl;

  const User({
    required this.id,
    required this.age,
    required this.fullName,
    required this.userName,
    required this.languages,
    required this.interests,
    required this.livesIn,
    required this.from,
    required this.trunkType,
    required this.trailerType,
    required this.photoUrl,
    required this.backgroundPhotoUrl,
  });

  // attr
  @override
  // TODO: implement props
  List<Object?> get props => [
        id,
        fullName,
        age,
        photoUrl,
        userName,
        languages,
        interests,
        livesIn,
        from,
        trunkType,
        trailerType,
        photoUrl,
        backgroundPhotoUrl
      ];
}
