import 'package:floor/floor.dart';
@entity
class Dept{
  @primaryKey
  final int id;
  final String deptType ;
  final String amount;
  final String name;
  String description;
 Dept(this.deptType, this.amount, this.name, this.description, this.id);
}
