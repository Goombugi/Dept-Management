import 'dart:async';
import 'package:floor/floor.dart';
import 'package:sqflite/sqflite.dart' as sqflite;
import 'depts.dart';
import 'dpet_dao.dart';

part 'database.g.dart'; // the generated code will be there

@Database(version: 1, entities: [Dept])
abstract class AppDatabase extends FloorDatabase {
  DeptDao get DeptDao;
}