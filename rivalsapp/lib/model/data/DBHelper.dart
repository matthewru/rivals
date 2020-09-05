import 'RivalEntity.dart';
import 'dart:io';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path_provider/path_provider.dart';

abstract class DBHelper {
  static final _databaseName = "PRDB.db";
  static final _databaseVersion = 1;

  static Database _database;
  Future<Database> get database async {
    if (_database != null) return _database;
    _database = await _initDatabase();
    return _database;
  }

  _initDatabase() async {
    Directory documentsDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentsDirectory.path, _databaseName);
    return await openDatabase(path,
        version: _databaseVersion, onCreate: _onCreate);
  }

  Future _onCreate(Database db, int version) async {
    await db.execute('''
          CREATE TABLE IF NOT EXISTS $tableRivals (
            $columnId STRING PRIMARY KEY,
            $columnName STRING NOT NULL,
            $columnPhotoPath STRING NOT NULL,
            $columnPhoneNumber STRING NOT NULL
          )
          ''');
  }
}
