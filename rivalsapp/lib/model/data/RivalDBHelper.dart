import 'package:rivalsapp/model/data/DBHelper.dart';
import 'package:rivalsapp/model/data/RivalEntity.dart';
import 'package:sqflite/sqflite.dart';

class RivalDBHelper extends DBHelper {
  RivalDBHelper._privateConstructor();
  static final RivalDBHelper instance = RivalDBHelper._privateConstructor();

  Future<int> insertRival(RivalEntity rivalEntity) async {
    Database db = await database;
    int id = await db.insert(tableRivals, rivalEntity.toMap());
    return id;
  }

  Future<RivalEntity> queryRival(int id) async {
    Database db = await database;
    List<Map> maps = await db.query(tableRivals,
        columns: [columnId, columnName, columnPhotoPath, columnPhoneNumber],
        where: '$columnId = ?',
        whereArgs: [id]);
    if (maps.length > 0) {
      return RivalEntity.fromMap(maps.first);
    }
    return null;
  }

  Future<int> deleteRival(int id) async {
    Database db = await database;
    int deletedId =
        await db.delete(tableRivals, where: '$columnId = ?', whereArgs: [id]);
    return deletedId;
  }

  void updateRival(RivalEntity rivalEntity) async {
    Database db = await database;
    await db.update(tableRivals, rivalEntity.toMap(),
        where: '$columnId = ?', whereArgs: [rivalEntity.id]);
  }

  Future<List<RivalEntity>> queryAllRivals() async {
    Database db = await database;
    List<Map> maps = await db.query(tableRivals,
        columns: [columnId, columnName, columnPhotoPath, columnPhoneNumber]);
    if (maps.length > 0) {
      return maps.map((m) => RivalEntity.fromMap(m));
    }
    return null;
  }
}
