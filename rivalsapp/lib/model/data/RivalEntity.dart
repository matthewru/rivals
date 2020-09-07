import 'dart:core';
import '../domain/Rival.dart';

final String tableRivals = 'rivals';
final String columnId = 'id';
final String columnName = 'name';
final String columnPhotoPath = 'photo_path';
final String columnPhoneNumber = 'phone_number';

class RivalEntity {
  int id;
  String name;
  String photoPath;
  String phoneNumber;

  RivalEntity.fromRival(Rival rival) {
    this.id = rival.id;
    this.name = rival.name;
    this.photoPath = rival.photoPath;
    this.phoneNumber = rival.phoneNumber;
  }

  RivalEntity.fromMap(Map<String, dynamic> map) {
    this.id = map[columnId];
    this.name = map[columnName];
    this.photoPath = map[columnPhotoPath];
    this.phoneNumber = map[columnPhoneNumber];
  }

  int get getId => id;

  String get getName => name;

  String get getPhotoPath => photoPath;

  set setPhotoPath(String photoPath) => this.photoPath = photoPath;

  String get getPhoneNumber => phoneNumber;

  set setPhoneNumber(String phoneNumber) => this.phoneNumber = phoneNumber;

  Map<String, dynamic> toMap() {
    var map = <String, dynamic>{
      columnName: this.name,
      columnPhotoPath: this.photoPath,
      columnPhoneNumber: this.phoneNumber
    };
    if (id != null) {
      map[columnId] = id;
    }
    return map;
  }

  @override
  int get hashCode => id.hashCode;

  @override
  bool operator ==(Object other) =>
      other is RivalEntity &&
      other.id == id &&
      other.name == name &&
      other.photoPath == photoPath &&
      other.phoneNumber == phoneNumber;
}
