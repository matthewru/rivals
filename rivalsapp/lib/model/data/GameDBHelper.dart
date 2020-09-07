import 'package:rivalsapp/model/data/DBHelper.dart';
import 'package:rivalsapp/model/data/GameEntity.dart';
import 'package:sqflite/sqflite.dart';

class GameDBHelper extends DBHelper {
  GameDBHelper._privateConstructor();
  static final GameDBHelper instance = GameDBHelper._privateConstructor();

  Future<int> insertGame(GameEntity gameEntity) async {
    Database db = await database;
    int id = await db.insert(tableGames, gameEntity.toMap());
    return id;
  }

  Future<GameEntity> queryGame(int id) async {
    Database db = await database;
    List<Map> maps = await db.query(tableGames,
        columns: [columnId, columnName, columnIconPath],
        where: '$columnId = ?',
        whereArgs: [id]);
    if (maps.length > 0) {
      return GameEntity.fromMap(maps.first);
    }
    return null;
  }

  Future<int> deleteGame(int id) async {
    Database db = await database;
    int deletedId =
        await db.delete(tableGames, where: '$columnId = ?', whereArgs: [id]);
    return deletedId;
  }

  void updateGame(GameEntity rivalEntity) async {
    Database db = await database;
    await db.update(tableGames, rivalEntity.toMap(),
        where: '$columnId = ?', whereArgs: [rivalEntity.id]);
  }

  Future<List<GameEntity>> queryAllGames() async {
    Database db = await database;
    List<Map> maps = await db
        .query(tableGames, columns: [columnId, columnName, columnIconPath]);
    if (maps.length > 0) {
      return maps.map((m) => GameEntity.fromMap(m));
    }
    return null;
  }
}
