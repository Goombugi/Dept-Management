import 'package:floor/floor.dart';
@entity
class Dept{
@primaryKey
  final int id;
  final String deptType;
  final String amount;
  final String name;
  final String description;

Dept(this.id,this.deptType, this.amount, this.name, this.description);
}
