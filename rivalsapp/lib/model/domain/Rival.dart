import 'dart:core';

class Rival {
  final int id;
  final String name;
  String photoPath;
  String phoneNumber;

  Rival(this.id, this.name);

  String get getPhotoPath => photoPath;

  set setPhotoPath(String photoPath) => this.photoPath = photoPath;

  String get getPhoneNumber => phoneNumber;

  set setPhoneNumber(String phoneNumber) => this.phoneNumber = phoneNumber;
}
