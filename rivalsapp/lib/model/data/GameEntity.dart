import 'dart:core';
import 'package:rivalsapp/model/domain/Game.dart';

final String tableGames = 'games';
final String columnId = 'id';
final String columnName = 'name';
final String columnIconPath = 'icon_path';

class GameEntity {
  String id;
  String name;
  String iconPath;

  GameEntity.fromGame(Game game) {
    this.id = game.id;
    this.name = game.name;
    this.iconPath = game.iconPath;
  }

  GameEntity.fromMap(Map<String, dynamic> map) {
    this.id = map[columnId];
    this.name = map[columnName];
    this.iconPath = map[columnIconPath];
  }

  GameEntity(this.id, this.name, this.iconPath);

  String get getIconPath => iconPath;

  set setIconPath(String iconPath) => this.iconPath = iconPath;

  Map<String, dynamic> toMap() {
    var map = <String, dynamic>{
      columnName: this.name,
      columnIconPath: this.iconPath
    };
    if (id != null) {
      map[columnId] = id;
    }
    return map;
  }
}
