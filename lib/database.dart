import 'dart:async';
import 'package:floor/floor.dart';
import 'package:sqflite/sqflite.dart';
import 'depts.dart';
import 'database.g.dart';

@Database(version: 1, entities: [Dept])
abstract class AppDatabase  extends FloorDatabase{
  DeptDao get deptDao;
}

