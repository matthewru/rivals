import 'dart:core';

class GameEntity {
  final String id;
  final String name;
  String iconPath;

  GameEntity(this.id, this.name, this.iconPath);

  String get getIconPath => iconPath;

  set setIconPath(String iconPath) => this.iconPath = iconPath;
}
