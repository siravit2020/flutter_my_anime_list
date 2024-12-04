import 'package:flutter_my_anime_list/shared/local/cache/local_db.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';

class LocalDbImpl extends LocalDb {
  late Isar db;

  @override
  Future<void> initDb() async {
    final dir = await getApplicationDocumentsDirectory();
    db = await Isar.open(
      [],
      directory: dir.path,
    );
  }

  @override
  Isar getDb() {
    return db;
  }

  @override
  Future<void> cleanDb() async {
    await db.writeTxn(cleanDb);
  }
}
