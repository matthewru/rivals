import 'dart:core';

class Game {
  final String id;
  final String name;
  String iconPath;

  Game(this.id, this.name, this.iconPath);

  String get getIconPath => iconPath;

  set setIconPath(String iconPath) => this.iconPath = iconPath;
}
