import 'dart:io';
import 'package:flutter_test/flutter_test.dart';
import 'package:rivalsapp/model/data/RivalEntity.dart';
import 'package:rivalsapp/model/data/RivalDBHelper.dart';

RivalDBHelper helper = RivalDBHelper.instance;

void main() {
  setup();

  test('Test insert rival and query it back.', () async {
    var rival = RivalEntity.fromMap({
      'name': 'Matthew',
      'photoPath': 'dummy/path/file',
      'phoneNumber': '630-123-4567'
    });
    int id = await helper.insertRival(rival);
    expect(id, id is int);

    RivalEntity added = await helper.queryRival(id);
    expect(added, equals(rival));
  });
}

void setup() {
  TestWidgetsFlutterBinding.ensureInitialized();
  Process.start('bash', ['-c','export'], environment: {'PRDB': 'test/resources'});
}