
import 'package:moor/moor.dart';
part 'dept_database.g.dart';

class Depts extends Table{
  IntColumn get id => integer().autoIncrement()();
  BoolColumn get owe => boolean().withDefault(Constant(false))();
  BoolColumn get oweMe => boolean().withDefault(Constant(false))();
  IntColumn get amount => integer()();
  TextColumn get name => text().withLength(min: 1, max: 15)();
  TextColumn get description => text().withLength(min: 1, max: 51)();
  DateTimeColumn get dueData => dateTime().nullable()();
}


@UseMoor(tables: [Depts])
class AppDatabase extends _$AppDatabase{
  AppDatabase(): super(FlutterQueryExecutor.inDatabaseFolder(path: 'db.sqlite', logStatement: true));
  @override
  // TODO: implement schemaVersion
  int get schemaVersion => throw UnimplementedError();
}